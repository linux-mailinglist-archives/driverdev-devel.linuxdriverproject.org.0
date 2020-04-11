Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65B761A538E
	for <lists+driverdev-devel@lfdr.de>; Sat, 11 Apr 2020 21:43:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 138FF87A52;
	Sat, 11 Apr 2020 19:43:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uzGEwpObHqZY; Sat, 11 Apr 2020 19:43:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 754BA878E3;
	Sat, 11 Apr 2020 19:43:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 855351BF33D
 for <devel@linuxdriverproject.org>; Sat, 11 Apr 2020 19:43:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4E00D85D7E
 for <devel@linuxdriverproject.org>; Sat, 11 Apr 2020 19:43:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 05KjcLJI6K1y for <devel@linuxdriverproject.org>;
 Sat, 11 Apr 2020 19:43:38 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0124.hostedemail.com
 [216.40.44.124])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3ED4685D56
 for <devel@driverdev.osuosl.org>; Sat, 11 Apr 2020 19:43:38 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave02.hostedemail.com (Postfix) with ESMTP id 0FBE418026433
 for <devel@driverdev.osuosl.org>; Sat, 11 Apr 2020 19:43:36 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay02.hostedemail.com (Postfix) with ESMTP id 70B222C9D;
 Sat, 11 Apr 2020 19:43:33 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:800:960:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1540:1593:1594:1711:1730:1747:1777:1792:2393:2559:2562:2828:2915:3138:3139:3140:3141:3142:3352:3622:3865:3867:3868:3871:3873:4321:5007:7576:7903:8957:10004:10400:10450:10455:10848:11026:11232:11658:11914:12043:12296:12297:12438:12555:12740:12760:12895:12986:13069:13095:13311:13357:13439:14181:14659:14721:19904:19999:21080:21433:21451:21627:30029:30054:30069:30070:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:2, LUA_SUMMARY:none
X-HE-Tag: owl05_1ed6d11cbc207
X-Filterd-Recvd-Size: 1962
Received: from XPS-9350.home (unknown [47.151.136.130])
 (Authenticated sender: joe@perches.com)
 by omf12.hostedemail.com (Postfix) with ESMTPA;
 Sat, 11 Apr 2020 19:43:31 +0000 (UTC)
Message-ID: <8d097283a4676f7e1050c9d6664d89d710e21bcf.camel@perches.com>
Subject: Re: [PATCH] taging: android: ashmem: Declared const key
From: Joe Perches <joe@perches.com>
To: MugilRaj <dmugil2000@gmail.com>
Date: Sat, 11 Apr 2020 12:41:26 -0700
In-Reply-To: <1586633396-24237-1-git-send-email-dmugil2000@gmail.com>
References: <1586633396-24237-1-git-send-email-dmugil2000@gmail.com>
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
Cc: mugil2301 <110117057@nitt.edu>, devel@driverdev.osuosl.org,
 Todd Kjos <tkjos@android.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org,
 Arve =?ISO-8859-1?Q?Hj=F8nnev=E5g?= <arve@android.com>,
 Joel Fernandes <joel@joelfernandes.org>, Martijn Coenen <maco@android.com>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, 2020-04-12 at 00:59 +0530, MugilRaj wrote:
> From: mugil2301 <110117057@nitt.edu>

You need to verify the patch subject.
You need a change log message too.

> Signed-off-by: mugil2301 <110117057@nitt.edu>

You need to put your legal name here

> diff --git a/drivers/staging/android/ashmem.c b/drivers/staging/android/ashmem.c
[]
> @@ -367,7 +367,7 @@ ashmem_vmfile_get_unmapped_area(struct file *file, unsigned long addr,
>  
>  static int ashmem_mmap(struct file *file, struct vm_area_struct *vma)
>  {
> -	static struct file_operations vmfile_fops;
> +	static const  struct file_operations vmfile_fops;
>  	struct ashmem_area *asma = file->private_data;
>  	int ret = 0;

(this won't compile)

checkpatch is not always right.

Do please compile the files changed by your patch
and verify change correctness before sending any
proposed patch.


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
