Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D8E419CF5A
	for <lists+driverdev-devel@lfdr.de>; Fri,  3 Apr 2020 06:35:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 547668816D;
	Fri,  3 Apr 2020 04:35:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tW3M4c0VJFLt; Fri,  3 Apr 2020 04:35:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 25FA887FE3;
	Fri,  3 Apr 2020 04:35:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 19BA71BF38D
 for <devel@linuxdriverproject.org>; Fri,  3 Apr 2020 04:35:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 11B3286B91
 for <devel@linuxdriverproject.org>; Fri,  3 Apr 2020 04:35:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pvi9aft8hekM for <devel@linuxdriverproject.org>;
 Fri,  3 Apr 2020 04:35:33 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0111.hostedemail.com
 [216.40.44.111])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 34F1886B90
 for <devel@driverdev.osuosl.org>; Fri,  3 Apr 2020 04:35:33 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay08.hostedemail.com (Postfix) with ESMTP id DF844182CED5B;
 Fri,  3 Apr 2020 04:35:31 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:960:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1537:1561:1593:1594:1711:1714:1730:1747:1777:1792:2393:2559:2562:2828:3138:3139:3140:3141:3142:3622:3865:3867:3868:3871:4250:4321:5007:7903:10004:10400:10848:11232:11658:11914:12297:12663:12740:12760:12895:13019:13069:13311:13357:13439:14659:14721:21080:21611:21627:30012:30054:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: seed33_4d3b0b285b054
X-Filterd-Recvd-Size: 1327
Received: from XPS-9350.home (unknown [47.151.136.130])
 (Authenticated sender: joe@perches.com)
 by omf16.hostedemail.com (Postfix) with ESMTPA;
 Fri,  3 Apr 2020 04:35:30 +0000 (UTC)
Message-ID: <d74075e94b39b23d2e3acb24baaaedacfd0cc426.camel@perches.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: emxx_udc: Remove unused code
From: Joe Perches <joe@perches.com>
To: "John B. Wyatt IV" <jbwyatt4@gmail.com>, Stefano Brivio
 <sbrivio@redhat.com>
Date: Thu, 02 Apr 2020 21:33:34 -0700
In-Reply-To: <4bd376a6db77ef779972f377cc2c3789d03668e7.camel@gmail.com>
References: <20200402021706.788533-1-jbwyatt4@gmail.com>
 <20200403015057.7a972c79@elisabeth>
 <4bd376a6db77ef779972f377cc2c3789d03668e7.camel@gmail.com>
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
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com,
 Saiyam Doshi <saiyamdoshi.in@gmail.com>, linux-kernel@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, 2020-04-02 at 18:42 -0700, John B. Wyatt IV wrote:
> DEBUG is not actually used as far as I can tell (I am still new to
> kernel debugging systems to please correct me).

DEBUG is used by the <foo>_debug and <bar>_dbg macros
(pr_debug, dev_dbg)



_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
