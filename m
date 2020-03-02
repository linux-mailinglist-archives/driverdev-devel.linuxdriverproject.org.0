Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E0BC175B56
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Mar 2020 14:11:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0328A8766C;
	Mon,  2 Mar 2020 13:11:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nhwFdK9WVquv; Mon,  2 Mar 2020 13:11:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 52B3885E5E;
	Mon,  2 Mar 2020 13:11:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AD40B1BF29E
 for <devel@linuxdriverproject.org>; Mon,  2 Mar 2020 13:11:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A7C4D85CCF
 for <devel@linuxdriverproject.org>; Mon,  2 Mar 2020 13:11:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lJErDUW5qnLM for <devel@linuxdriverproject.org>;
 Mon,  2 Mar 2020 13:11:35 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0192.hostedemail.com
 [216.40.44.192])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9F36C85218
 for <devel@driverdev.osuosl.org>; Mon,  2 Mar 2020 13:11:35 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave08.hostedemail.com (Postfix) with ESMTP id 753F61801EA55
 for <devel@driverdev.osuosl.org>; Mon,  2 Mar 2020 13:11:33 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay02.hostedemail.com (Postfix) with ESMTP id E6E32B2BE;
 Mon,  2 Mar 2020 13:11:30 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:800:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2393:2559:2562:2828:3138:3139:3140:3141:3142:3352:3622:3865:3867:3870:3872:4321:5007:7903:10004:10400:10848:11026:11232:11473:11658:11914:12048:12296:12297:12438:12740:12760:12895:13069:13311:13357:13439:14096:14097:14181:14659:14721:21080:21433:21611:21627:21990:30054:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:2, LUA_SUMMARY:none
X-HE-Tag: teeth95_644aa53c30800
X-Filterd-Recvd-Size: 2034
Received: from XPS-9350.home (unknown [47.151.143.254])
 (Authenticated sender: joe@perches.com)
 by omf08.hostedemail.com (Postfix) with ESMTPA;
 Mon,  2 Mar 2020 13:11:29 +0000 (UTC)
Message-ID: <0eaac427354844a4fcfb0d9843cf3024c6af21df.camel@perches.com>
Subject: Re: [PATCH v2 2/3] binder: do not initialize locals passed to
 copy_from_user()
From: Joe Perches <joe@perches.com>
To: glider@google.com, tkjos@google.com, keescook@chromium.org, 
 gregkh@linuxfoundation.org, arve@android.com, mingo@redhat.com
Date: Mon, 02 Mar 2020 05:09:58 -0800
In-Reply-To: <20200302130430.201037-2-glider@google.com>
References: <20200302130430.201037-1-glider@google.com>
 <20200302130430.201037-2-glider@google.com>
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
Cc: devel@driverdev.osuosl.org, peterz@infradead.org,
 linux-kernel@vger.kernel.org, dvyukov@google.com, jannh@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, 2020-03-02 at 14:04 +0100, glider@google.com wrote:
> Certain copy_from_user() invocations in binder.c are known to
> unconditionally initialize locals before their first use, like e.g. in
> the following case:
[]
> diff --git a/drivers/android/binder.c b/drivers/android/binder.c
[]
> @@ -3788,7 +3788,7 @@ static int binder_thread_write(struct binder_proc *proc,
>  
>  		case BC_TRANSACTION_SG:
>  		case BC_REPLY_SG: {
> -			struct binder_transaction_data_sg tr;
> +			struct binder_transaction_data_sg tr __no_initialize;
>  
>  			if (copy_from_user(&tr, ptr, sizeof(tr)))

I fail to see any value in marking tr with __no_initialize
when it's immediately written to by copy_from_user.

>  				return -EFAULT;
> @@ -3799,7 +3799,7 @@ static int binder_thread_write(struct binder_proc *proc,
>  		}
>  		case BC_TRANSACTION:
>  		case BC_REPLY: {
> -			struct binder_transaction_data tr;
> +			struct binder_transaction_data tr __no_initialize;
>  
>  			if (copy_from_user(&tr, ptr, sizeof(tr)))

etc...


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
