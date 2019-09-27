Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42FB0C0312
	for <lists+driverdev-devel@lfdr.de>; Fri, 27 Sep 2019 12:14:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2042187FB9;
	Fri, 27 Sep 2019 10:14:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uo2MRhQhO4SA; Fri, 27 Sep 2019 10:14:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id BA3EC87F8E;
	Fri, 27 Sep 2019 10:14:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E4A401BF2F4
 for <devel@linuxdriverproject.org>; Fri, 27 Sep 2019 10:14:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E08EC86DB4
 for <devel@linuxdriverproject.org>; Fri, 27 Sep 2019 10:14:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ou1h5wJCPj4T for <devel@linuxdriverproject.org>;
 Fri, 27 Sep 2019 10:14:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 433AD86214
 for <devel@driverdev.osuosl.org>; Fri, 27 Sep 2019 10:14:38 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id A8E92AE99;
 Fri, 27 Sep 2019 10:14:35 +0000 (UTC)
From: Benjamin Poirier <bpoirier@suse.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 0/17] staging: qlge: Fix rx stall in case of allocation
 failures
Date: Fri, 27 Sep 2019 19:11:54 +0900
Message-Id: <20190927101210.23856-1-bpoirier@suse.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-BeenThere: driverdev-devel@linuxdriverproject.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux Driver Project Developer List
 <driverdev-devel.linuxdriverproject.org>
List-Unsubscribe: <http://driverdev.linuxdriverproject.org/mailman/options/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=unsubscribe>
List-Archive: <http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/>
List-Post: <mailto:driverdev-devel@linuxdriverproject.org>
List-Help: <mailto:driverdev-devel-request@linuxdriverproject.org?subject=help>
List-Subscribe: <http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=subscribe>
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org,
 GR-Linux-NIC-Dev@marvell.com, linux-kernel@vger.kernel.org,
 Manish Chopra <manishc@marvell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

qlge refills rx buffers from napi context. In case of allocation failure,
allocation will be retried the next time napi runs. If a receive queue runs
out of free buffers (possibly after subsequent allocation failures), it
drops all traffic, no longer raises interrupts and napi is no longer
scheduled; reception is stalled until manual admin intervention.

This patch series adds a fallback mechanism for rx buffer allocation. If an
rx buffer queue becomes empty, a workqueue is scheduled to refill it from
process context where allocation can block until mm has freed some pages
(hopefully). This approach was inspired by the virtio_net driver (commit
3161e453e496 "virtio: net refill on out-of-memory").

I've compared this with how some other devices with a similar allocation
scheme handle this situation:
mlx4 relies on a periodic watchdog, sfc uses a timer, e1000e and fm10k rely
on periodic hardware interrupts (IIUC). In all cases, they use this to
schedule napi periodically at a fixed interval (10-250ms) until allocations
succeed. This kind of approach simplifies allocations because only one
context may refill buffers, however it is inefficient because of the fixed
interval: either the interval was too short, the allocation fails again and
work was done without forward progress; or the interval was too long,
buffers could've been allocated earlier and rx restarted earlier, instead
traffic was dropped while the system was idle.

Note that the qlge driver (and device) uses two kinds of buffers for
received data, so-called "small buffers" and "large buffers". The two are
arranged in ring pairs, the sbq and lbq. Depending on frame size, protocol
content and header splitting, data can go in either type of buffers.
Because of buffer size, lbq allocations are more likely to fail and lead to
stall, however I've reproduced the problem with sbq as well. The problem
was originally found when running jumbo frames. In that case, qlge uses
order-1 allocations for the large buffers. Although the two kinds of
buffers are managed similarly, the qlge driver duplicates most data
structures and code for their handling. In fact, even a casual look at the
qlge driver shows it to be in a state of disrepair, to put it kindly...

Patches 1-14 are cleanups that remove, fix and deduplicate code related to
sbq and lbq handling. Regarding those cleanups, patches 2 ("Remove
irq_cnt") and 8 ("Deduplicate rx buffer queue management") are the most
important. Finally, patches 15-17 fix the actual problem of rx stalls in
case of allocation failures by implementing the fallback of allocations to
a workqueue.

I've tested these patches using two different approaches:
1) A sender uses pktgen to send udp traffic. The receiver has a large swap,
a large net.core.rmem_max, runs a program that dirties all free memory in a
loop and runs a program that opens as many udp sockets as possible but
doesn't read from them. Since received data is all queued in the sockets
rather than freed, qlge is allocating receive buffers as quickly as
possible and faces allocation failures if the swap is slower than the
network.
2) A sender uses super_netperf. Likewise, the receiver has a large swap, a
large net.core.rmem_max and runs a program that dirties all free memory in
a loop. After the netperf send test is started, `killall -s SIGSTOP
netserver` on the receiver leads to the same situation as above.

---
Changes
v1->v2
https://lore.kernel.org/netdev/20190617074858.32467-1-bpoirier@suse.com/
* simplified QLGE_FIT16 macro down to a simple cast
* added "qlge: Fix irq masking in INTx mode"
* fixed address in pci_unmap_page() calls in "qlge: Deduplicate rx buffer
  queue management", no effect on end result of series
* adjusted series following move of driver to staging


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
