Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C16372315C3
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 Jul 2020 00:53:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 979BB885DB;
	Tue, 28 Jul 2020 22:53:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4MhoI3X0sE+Q; Tue, 28 Jul 2020 22:53:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D011787919;
	Tue, 28 Jul 2020 22:53:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1D2681BF5AA
 for <devel@linuxdriverproject.org>; Tue, 28 Jul 2020 22:53:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 127A98819B
 for <devel@linuxdriverproject.org>; Tue, 28 Jul 2020 22:53:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id G9J+k+vOXSkV for <devel@linuxdriverproject.org>;
 Tue, 28 Jul 2020 22:53:13 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0024.hostedemail.com
 [216.40.44.24])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D39DA88195
 for <devel@driverdev.osuosl.org>; Tue, 28 Jul 2020 22:53:13 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave07.hostedemail.com (Postfix) with ESMTP id EEFE918353CF1
 for <devel@driverdev.osuosl.org>; Tue, 28 Jul 2020 18:04:27 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay01.hostedemail.com (Postfix) with ESMTP id 7BA03100E7B51;
 Tue, 28 Jul 2020 18:04:25 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 20, 1.5, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:973:982:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1539:1593:1594:1711:1714:1730:1747:1777:1792:2328:2393:2559:2562:2828:3138:3139:3140:3141:3142:3351:3622:3867:3871:3872:3873:4321:5007:6691:10004:10400:10848:11026:11232:11658:11914:12043:12048:12296:12297:12438:12740:12760:12895:13069:13311:13357:13439:14181:14659:14721:21080:21627:21740:30054:30070:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:2, LUA_SUMMARY:none
X-HE-Tag: stove18_0203bed26f6b
X-Filterd-Recvd-Size: 1690
Received: from XPS-9350 (unknown [172.58.27.230])
 (Authenticated sender: joe@perches.com)
 by omf14.hostedemail.com (Postfix) with ESMTPA;
 Tue, 28 Jul 2020 18:04:22 +0000 (UTC)
Message-ID: <0e9fee846ac0fb28df4098e6d577e9090be38ed9.camel@perches.com>
Subject: Re: [PATCH] staging: android: ashmem: used const keyword
From: Joe Perches <joe@perches.com>
To: Dhiraj Sharma <dhiraj.sharma0024@gmail.com>, gregkh@linuxfoundation.org,
 arve@android.com, tkjos@android.com, maco@android.com,
 joel@joelfernandes.org,  christian@brauner.io, hridya@google.com,
 surenb@google.com
Date: Tue, 28 Jul 2020 11:04:20 -0700
In-Reply-To: <20200728175935.2130-1-dhiraj.sharma0024@gmail.com>
References: <20200728175935.2130-1-dhiraj.sharma0024@gmail.com>
User-Agent: Evolution 3.36.3-0ubuntu1 
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, 2020-07-28 at 23:29 +0530, Dhiraj Sharma wrote:
> I ran checkpatch.pl script which reported a warning to use const keyword
> on line 370.Therefore I made this change.

checkpatch is a brainless script.
Not everything it suggests is appropriate.

> diff --git a/drivers/staging/android/ashmem.c b/drivers/staging/android/ashmem.c
[]
> @@ -367,7 +367,7 @@ ashmem_vmfile_get_unmapped_area(struct file *file, unsigned long addr,
> 
>  static int ashmem_mmap(struct file *file, struct vm_area_struct *vma)
>  {
> -	static struct file_operations vmfile_fops;
> +	static const struct file_operations vmfile_fops;

This can't work.

Please make sure to compile your proposed changes
_before_ you post them.


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
