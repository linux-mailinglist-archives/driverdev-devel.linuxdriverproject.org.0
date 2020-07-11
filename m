Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6116221C315
	for <lists+driverdev-devel@lfdr.de>; Sat, 11 Jul 2020 09:45:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 17C50214EB;
	Sat, 11 Jul 2020 07:45:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OjkHE8JQt4ja; Sat, 11 Jul 2020 07:45:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5552420528;
	Sat, 11 Jul 2020 07:45:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D35D01BF477
 for <devel@linuxdriverproject.org>; Sat, 11 Jul 2020 07:45:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CFF2E8750D
 for <devel@linuxdriverproject.org>; Sat, 11 Jul 2020 07:45:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 94MtmzyBrZRR for <devel@linuxdriverproject.org>;
 Sat, 11 Jul 2020 07:45:27 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from sa-prd-fep-044.btinternet.com (mailomta4-sa.btinternet.com
 [213.120.69.10])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 125818747A
 for <devel@driverdev.osuosl.org>; Sat, 11 Jul 2020 07:45:26 +0000 (UTC)
Received: from sa-prd-rgout-002.btmx-prd.synchronoss.net ([10.2.38.5])
 by sa-prd-fep-044.btinternet.com with ESMTP id
 <20200711074524.SVO3440.sa-prd-fep-044.btinternet.com@sa-prd-rgout-002.btmx-prd.synchronoss.net>;
 Sat, 11 Jul 2020 08:45:24 +0100
Authentication-Results: btinternet.com;
 auth=pass (LOGIN) smtp.auth=j.oldman998@btinternet.com
X-Originating-IP: [31.53.71.41]
X-OWM-Source-IP: 31.53.71.41 (GB)
X-OWM-Env-Sender: j.oldman998@btinternet.com
X-VadeSecure-score: verdict=clean score=0/300, class=clean
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrgeduiedrvddvgdduvdehucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuueftkffvkffujffvgffngfevqffopdfqfgfvnecuuegrihhlohhuthemuceftddunecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvuffkfhggtggujggfsehttdertddtredvnecuhfhrohhmpedfoeflohhhnhcuqfhlughmrghnqedfuceojhhohhhnrdholhgumhgrnhesphholhgvhhhilhhlrdgtohdruhhkqeenucggtffrrghtthgvrhhnpeffveekffekffefhfevvdevieelvdduuedvteeviefgteetfeffffekieduieekveenucfkphepfedurdehfedrjedurdegudenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhephhgvlhhopehhvghnrhihpdhinhgvthepfedurdehfedrjedurdeguddpmhgrihhlfhhrohhmpeeojhhohhhnrdholhgumhgrnhesphholhgvhhhilhhlrdgtohdruhhkqedprhgtphhtthhopeeouggvvhgvlhesughrihhvvghruggvvhdrohhsuhhoshhlrdhorhhgqedprhgtphhtthhopeeoghhrvghgkhhhsehlihhnuhigfhhouhhnuggrthhiohhnrdhorhhgqedprhgtphhtthhopeeoghhushhtrghvohesvghmsggvugguvgguohhrrdgtohhmqedprhgtphhtthhopeeolhhinhhugidqkhgvrhhnvghlsehvghgvrhdrkhgvrhhnvghlrdhorhhgqe
X-RazorGate-Vade-Verdict: clean 0
X-RazorGate-Vade-Classification: clean
Received: from henry (31.53.71.41) by
 sa-prd-rgout-002.btmx-prd.synchronoss.net (5.8.340) (authenticated as
 j.oldman998@btinternet.com)
 id 5ED9AA6E0630DA2A; Sat, 11 Jul 2020 08:45:24 +0100
Date: Sat, 11 Jul 2020 08:45:22 +0100
From: "<John Oldman>" <john.oldman@polehill.co.uk>
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Subject: Re: [PATCH] staging: rtl8723bs: core: Using comparison to true is
 error prone
Message-ID: <20200711074522.GA20279@henry>
References: <20200710201643.27322-1-john.oldman@polehill.co.uk>
 <69bf7931-7df2-a0f8-8329-929ccb6a2c20@embeddedor.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <69bf7931-7df2-a0f8-8329-929ccb6a2c20@embeddedor.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


Hi Gustavo
Thanks for the feedback.
I'll re-submit the patch.
Many thanks
john



On Fri, Jul 10, 2020 at 03:44:53PM -0500, Gustavo A. R. Silva wrote:
> 
> 
> On 7/10/20 15:16, John Oldman wrote:
> > clear below issues reported by checkpatch.pl:
> > 
> > CHECK: Using comparison to true is error prone
> > 
> > Signed-off-by: John Oldman <john.oldman@polehill.co.uk>
> > ---
> >  drivers/staging/rtl8723bs/core/rtw_ieee80211.c | 5 +++--
> >  1 file changed, 3 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/staging/rtl8723bs/core/rtw_ieee80211.c b/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
> > index ca98274ae390..d9bdd4fb9dc3 100644
> > --- a/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
> > +++ b/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
> > @@ -363,8 +363,9 @@ int rtw_generate_ie(struct registry_priv *pregistrypriv)
> >  	}
> >  
> >  	/* HT Cap. */
> > -	if (((pregistrypriv->wireless_mode&WIRELESS_11_5N) || (pregistrypriv->wireless_mode&WIRELESS_11_24N))
> > -		&& (pregistrypriv->ht_enable == true)) {
> > +	if (((pregistrypriv->wireless_mode & WIRELESS_11_5N)
> > +	      || (pregistrypriv->wireless_mode & WIRELESS_11_24N))
> > +	      && (pregistrypriv->ht_enable)) {
> 		 ^			  ^
> The enclosing parentheses are unnecessary.
> 
> Also, if you run checkpatch.pl on your patch, you'll see
> the following:
> 
> CHECK: Logical continuations should be on the previous line
> #12: FILE: drivers/staging/rtl8723bs/core/rtw_ieee80211.c:367:
> +	if (((pregistrypriv->wireless_mode & WIRELESS_11_5N)
> +	      || (pregistrypriv->wireless_mode & WIRELESS_11_24N))
> 
> CHECK: Logical continuations should be on the previous line
> #13: FILE: drivers/staging/rtl8723bs/core/rtw_ieee80211.c:368:
> +	      || (pregistrypriv->wireless_mode & WIRELESS_11_24N))
> +	      && (pregistrypriv->ht_enable)) {
> 
> 
> It'd be nice to fix the above, too. :)
> 
> --
> Gustavo
> 
> >  		/* todo: */
> >  	}
> >  
> > 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
