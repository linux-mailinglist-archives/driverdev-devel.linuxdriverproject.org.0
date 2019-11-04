Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3691FEDFE3
	for <lists+driverdev-devel@lfdr.de>; Mon,  4 Nov 2019 13:20:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id CCC908AB1B;
	Mon,  4 Nov 2019 12:20:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fBmZvfTOp+ct; Mon,  4 Nov 2019 12:20:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0A53F8AA2B;
	Mon,  4 Nov 2019 12:20:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 499231BF239
 for <devel@linuxdriverproject.org>; Mon,  4 Nov 2019 12:20:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 42E0387200
 for <devel@linuxdriverproject.org>; Mon,  4 Nov 2019 12:20:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uSCFNP85_aqD for <devel@linuxdriverproject.org>;
 Mon,  4 Nov 2019 12:20:16 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C2D3F87154
 for <devel@driverdev.osuosl.org>; Mon,  4 Nov 2019 12:20:16 +0000 (UTC)
Received: from localhost (unknown [89.205.135.36])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BC8432053B;
 Mon,  4 Nov 2019 12:20:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572870016;
 bh=q+5CsE1R6eI+gms5EsuP+pT+In6Ccjn15PiekdN1X3w=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tck1HNmfadKcdco76MQiYsj1JnAksj3ANetsIpltNpINg+G5q2mzdd3IqdvBRp84F
 E3TBLS50w9Nwra2GEQqlUhwhjW/miSJmo+v0Ee5VDTT1mdryav6ax9d3DQovhPE3zy
 1ZNc9UmyDmQ29N2ChbncKf7RzXxcTaYNnpmdqndc=
Date: Mon, 4 Nov 2019 13:20:09 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Jack Ping CHNG <jack.ping.chng@intel.com>
Subject: Re: [PATCH v1] staging: intel-dpa: gswip: Introduce Gigabit Ethernet
 Switch (GSWIP) device driver
Message-ID: <20191104122009.GA2126921@kroah.com>
References: <03832ecb6a34876ef26a24910816f22694c0e325.1572863013.git.jack.ping.chng@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <03832ecb6a34876ef26a24910816f22694c0e325.1572863013.git.jack.ping.chng@intel.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
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
Cc: devel@driverdev.osuosl.org, cheol.yong.kim@intel.com,
 andriy.shevchenko@intel.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, davem@davemloft.net,
 mallikarjunax.reddy@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Nov 04, 2019 at 07:22:20PM +0800, Jack Ping CHNG wrote:
> This driver enables the Intel's LGM SoC GSWIP block.
> GSWIP is a core module tailored for L2/L3/L4+ data plane and QoS functions.
> It allows CPUs and other accelerators connected to the SoC datapath
> to enqueue and dequeue packets through DMAs.
> Most configuration values are stored in tables such as
> Parsing and Classification Engine tables, Buffer Manager tables and
> Pseudo MAC tables.

Why is this being submitted to staging?  What is wrong with the "real"
part of the kernel for this?

Your TODO file is really vague, and doesn't give anyone any real things
to work on with you, which is odd.

> Signed-off-by: Jack Ping CHNG <jack.ping.chng@intel.com>
> Signed-off-by: Amireddy Mallikarjuna reddy <mallikarjunax.reddy@linux.intel.com>

There is a group of people within Intel that you have to get code
reviewed by before you can send it to me.  Please go by that process and
not try to circumvent it by dumping it on staging without that review.
It is there for good reasons.

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
