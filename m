Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B15EF82419
	for <lists+driverdev-devel@lfdr.de>; Mon,  5 Aug 2019 19:39:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7999820798;
	Mon,  5 Aug 2019 17:39:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N8D-sIqvqYwl; Mon,  5 Aug 2019 17:39:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4819420785;
	Mon,  5 Aug 2019 17:39:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 39C751BF2F9
 for <devel@linuxdriverproject.org>; Mon,  5 Aug 2019 17:39:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 351B987D9E
 for <devel@linuxdriverproject.org>; Mon,  5 Aug 2019 17:39:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id goyRbnapdqfE for <devel@linuxdriverproject.org>;
 Mon,  5 Aug 2019 17:39:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8D63787D80
 for <devel@driverdev.osuosl.org>; Mon,  5 Aug 2019 17:39:08 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 74DB8C056807;
 Mon,  5 Aug 2019 17:39:06 +0000 (UTC)
Received: from rt4.app.eng.rdu2.redhat.com (rt4.app.eng.rdu2.redhat.com
 [10.10.161.56])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id D7C3E5DA60;
 Mon,  5 Aug 2019 17:39:01 +0000 (UTC)
Received: from rt4.app.eng.rdu2.redhat.com (localhost [127.0.0.1])
 by rt4.app.eng.rdu2.redhat.com (8.14.4/8.14.4) with ESMTP id x75Hd0BJ023399;
 Mon, 5 Aug 2019 13:39:00 -0400
Received: (from apache@localhost)
 by rt4.app.eng.rdu2.redhat.com (8.14.4/8.14.4/Submit) id x75Hcnwa023396;
 Mon, 5 Aug 2019 13:38:49 -0400
From: Red Hat Product Security <secalert@redhat.com>
X-PGP-Public-Key: https://www.redhat.com/security/650d5882.txt
Subject: [engineering.redhat.com #494100] Question on submitting patch for a
 security bug
In-Reply-To: <CAJ7L_Gp2HJoFOVxTgakCJw3LMuiPY0+60-giOtw3OwRD6zyNTQ@mail.gmail.com>
References: <RT-Ticket-494100@engineering.redhat.com>
 <CAJ7L_Gp2HJoFOVxTgakCJw3LMuiPY0+60-giOtw3OwRD6zyNTQ@mail.gmail.com>
Message-ID: <rt-4.0.13-23214-1565026728-1358.494100-5-0@engineering.redhat.com>
Precedence: bulk
X-RT-Loop-Prevention: engineering.redhat.com
RT-Ticket: engineering.redhat.com #494100
Managed-BY: RT 4.0.13 (http://www.bestpractical.com/rt/)
RT-Originator: pjp@redhat.com
To: b.zolnierkie@samsung.com, bob.liu@oracle.com, chuck.lever@oracle.com,
 davem@davemloft.net, emamd001@umn.edu, gregkh@linuxfoundation.org,
 kubakici@wp.pl, kvalo@codeaurora.org, navid.emamdoost@gmail.com,
 sam@ravnborg.org
MIME-Version: 1.0
X-RT-Original-Encoding: utf-8
Date: Mon, 5 Aug 2019 13:38:48 -0400
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.32]); Mon, 05 Aug 2019 17:39:08 +0000 (UTC)
X-BeenThere: driverdev-devel@linuxdriverproject.org
X-Mailman-Version: 2.1.29
List-Id: Linux Driver Project Developer List
 <driverdev-devel.linuxdriverproject.org>
List-Unsubscribe: <http://driverdev.linuxdriverproject.org/mailman/options/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=unsubscribe>
List-Archive: <http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/>
List-Post: <mailto:driverdev-devel@linuxdriverproject.org>
List-Help: <mailto:driverdev-devel-request@linuxdriverproject.org?subject=help>
List-Subscribe: <http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=subscribe>
Reply-To: secalert@redhat.com
Cc: kstewart@linuxfoundation.org, alexandre.belloni@bootlin.com,
 airlied@linux.ie, dri-devel@lists.freedesktop.org, bfields@fieldses.org,
 linux-ide@vger.kernel.org, thierry.reding@gmail.com,
 linux-stm32@st-md-mailman.stormreply.com, devel@driverdev.osuosl.org,
 joabreu@synopsys.com, linux-arm-kernel@lists.infradead.org,
 linux-serial@vger.kernel.org, jslaby@suse.com, matthias@redhat.com,
 alexandre.torgue@st.com, smccaman@umn.edu, kjlu@umn.edu, josef@toxicpanda.com,
 johnfwhitmore@gmail.com, nbd@other.debian.org, linux-block@vger.kernel.org,
 linux-mediatek@lists.infradead.org, nishkadg.linux@gmail.com,
 matthias.bgg@gmail.com, peppe.cavallaro@st.com, tglx@linutronix.de,
 andriy.shevchenko@linux.intel.com, trond.myklebust@hammerspace.com,
 allison@lohutok.net, axboe@kernel.dk, mcoquelin.stm32@gmail.com,
 linux-nfs@vger.kernel.org, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 unglinuxdriver@microchip.com, vkoul@kernel.org, vishal@chelsio.com,
 daniel@ffwll.ch, colin.king@canonical.com, anna.schumaker@netapp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello Navid,

On Thu, 18 Jul 2019 01:30:20 GMT, emamd001@umn.edu wrote:
> I've found a null dereference bug in the Linux kernel source code. I was
> wondering should I cc the patch to you as well (along with the
> maintainers)?

No. Please do not cc <secalert@redhat.com> on the upstream kernel patches.
It is meant for reporting security issues only.

Going through the patches here

1. Issues in ../staging/ drivers are not considered for CVE, they are not to be
used
in production environment.

2. Many of the patches listed fix NULL pointer dereference when memory
allocation
fails and returns NULL.

3. Do you happen to have reproducers for these issues? Could an unprivileged
user trigger them?

> Also, I was wondering what are the steps to get CVE for the bug (this is
> the first time I am reporting a bug)?

Generally CVE is assigned after confirming that a given issue really is a
security issue. And it may
have impact ranging from information leakage, DoS to privilege escalation or
maybe arbitrary code
execution. Every NULL pointer dereference is not security issue.


Hope it helps. Thank you.
---
Prasad J Pandit / Red Hat Product Security Team

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
