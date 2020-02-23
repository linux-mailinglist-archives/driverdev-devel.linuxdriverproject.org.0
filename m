Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D547E16A513
	for <lists+driverdev-devel@lfdr.de>; Mon, 24 Feb 2020 12:41:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CE2012278C;
	Mon, 24 Feb 2020 11:41:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 653AqsqN1oC1; Mon, 24 Feb 2020 11:41:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 84F8D22201;
	Mon, 24 Feb 2020 11:41:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1878C1BF2F1
 for <devel@linuxdriverproject.org>; Mon, 24 Feb 2020 11:41:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 14BE285C57
 for <devel@linuxdriverproject.org>; Mon, 24 Feb 2020 11:41:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TL6Okar6V9+N for <devel@linuxdriverproject.org>;
 Mon, 24 Feb 2020 11:41:09 +0000 (UTC)
X-Greylist: delayed 09:20:00 by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0132.hostedemail.com
 [216.40.44.132])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C61628539F
 for <devel@driverdev.osuosl.org>; Mon, 24 Feb 2020 11:41:09 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave03.hostedemail.com (Postfix) with ESMTP id 654601801A891
 for <devel@driverdev.osuosl.org>; Sun, 23 Feb 2020 23:52:14 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay04.hostedemail.com (Postfix) with ESMTP id D417018011E65;
 Sun, 23 Feb 2020 23:52:11 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:960:988:989:1260:1277:1311:1313:1314:1345:1359:1381:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2393:2559:2562:2692:2828:3138:3139:3140:3141:3142:3352:3622:3865:3866:3867:3868:3870:3871:3873:3874:4321:4605:5007:7875:7903:9040:10004:10400:10848:11026:11232:11473:11658:11914:12043:12048:12295:12296:12297:12740:12760:12895:13069:13311:13357:13439:14659:14721:21080:21433:21451:21611:21627:21740:21939:30012:30034:30054:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: look71_876f7d9380335
X-Filterd-Recvd-Size: 2193
Received: from XPS-9350.home (unknown [47.151.143.254])
 (Authenticated sender: joe@perches.com)
 by omf01.hostedemail.com (Postfix) with ESMTPA;
 Sun, 23 Feb 2020 23:52:10 +0000 (UTC)
Message-ID: <cba75ee4d88afdf118631510ad0f971e42c1a31c.camel@perches.com>
Subject: Re: [PATCH v3] staging: qlge: emit debug and dump at same level
From: Joe Perches <joe@perches.com>
To: Kaaira Gupta <kgupta@es.iitr.ac.in>, Manish Chopra
 <manishc@marvell.com>,  GR-Linux-NIC-Dev@marvell.com, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>,  netdev@vger.kernel.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Date: Sun, 23 Feb 2020 15:50:43 -0800
In-Reply-To: <20200223173132.GA13649@kaaira-HP-Pavilion-Notebook>
References: <20200223173132.GA13649@kaaira-HP-Pavilion-Notebook>
User-Agent: Evolution 3.34.1-2 
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, 2020-02-23 at 23:01 +0530, Kaaira Gupta wrote:
> Simplify code in ql_mpi_core_to_log() by calling print_hex_dump()
> instead of existing functions so that the debug and dump are
> emitted at the same KERN_<LEVEL>
[]
> Also, can you please help me understand how are are numbers 32 and 4
> chosen for the function print_hex_dump()?

Emit 32 bytes per line in 4 byte chunks as u32

And below:

> diff --git a/drivers/staging/qlge/qlge_dbg.c b/drivers/staging/qlge/qlge_dbg.c
[]
> @@ -1324,27 +1324,10 @@ void ql_mpi_core_to_log(struct work_struct *work)
>  {
>  	struct ql_adapter *qdev =
>  		container_of(work, struct ql_adapter, mpi_core_to_log.work);
[]
> +	print_hex_dump(KERN_DEBUG, "Core is dumping to log file!\n",
> +		       DUMP_PREFIX_OFFSET, 32, 4, qdev->mpi_coredump,
> +		       sizeof(*qdev->mpi_coredump), false);

This use of a prefix string is not acceptable.

From the kernel-doc:

/**
 * print_hex_dump - print a text hex dump to syslog for a binary blob of data
 * @level: kernel log level (e.g. KERN_DEBUG)
 * @prefix_str: string to prefix each line with;
 *  caller supplies trailing spaces for alignment if desired

So this would emit "Core is dumping..." line for for
every line of hex output.


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
