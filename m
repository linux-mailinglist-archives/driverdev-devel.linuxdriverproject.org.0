Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EB04A22D7F6
	for <lists+driverdev-devel@lfdr.de>; Sat, 25 Jul 2020 16:08:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E30F020504;
	Sat, 25 Jul 2020 14:08:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id heYnLFwn5mpb; Sat, 25 Jul 2020 14:08:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 872A720BF9;
	Sat, 25 Jul 2020 14:08:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E5BA01BF2A1
 for <devel@linuxdriverproject.org>; Sat, 25 Jul 2020 14:08:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E1FFB886F3
 for <devel@linuxdriverproject.org>; Sat, 25 Jul 2020 14:08:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3gl8kR0zES7G for <devel@linuxdriverproject.org>;
 Sat, 25 Jul 2020 14:08:03 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from sa-prd-fep-044.btinternet.com (mailomta8-sa.btinternet.com
 [213.120.69.14])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 142C8886A5
 for <devel@driverdev.osuosl.org>; Sat, 25 Jul 2020 14:08:02 +0000 (UTC)
Received: from sa-prd-rgout-003.btmx-prd.synchronoss.net ([10.2.38.6])
 by sa-prd-fep-044.btinternet.com with ESMTP id
 <20200725140800.FARW3440.sa-prd-fep-044.btinternet.com@sa-prd-rgout-003.btmx-prd.synchronoss.net>;
 Sat, 25 Jul 2020 15:08:00 +0100
Authentication-Results: btinternet.com;
 auth=pass (LOGIN) smtp.auth=j.oldman998@btinternet.com
X-Originating-IP: [86.152.161.91]
X-OWM-Source-IP: 86.152.161.91 (GB)
X-OWM-Env-Sender: j.oldman998@btinternet.com
X-VadeSecure-score: verdict=clean score=0/300, class=clean
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrgeduiedrheehgdejfecutefuodetggdotefrodftvfcurfhrohhfihhlvgemuceutffkvffkuffjvffgnffgvefqofdpqfgfvfenuceurghilhhouhhtmecufedtudenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepfffhvffukfhfgggtuggjfgesthdtredttdervdenucfhrhhomhepfdeolfhohhhnucfqlhgumhgrnheqfdcuoehjohhhnhdrohhlughmrghnsehpohhlvghhihhllhdrtghordhukheqnecuggftrfgrthhtvghrnhepffevkeffkefffefhvedvveeiledvudeuvdetveeigfetteefffffkeeiudeikeevnecukfhppeekiedrudehvddrudeiuddrledunecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehhvghlohephhgvnhhrhidpihhnvghtpeekiedrudehvddrudeiuddrledupdhmrghilhhfrhhomhepoehjohhhnhdrohhlughmrghnsehpohhlvghhihhllhdrtghordhukheqpdhrtghpthhtohepoeguvghvvghlsegurhhivhgvrhguvghvrdhoshhuohhslhdrohhrgheqpdhrtghpthhtohepoehgrhgvghhkhheslhhinhhugihfohhunhgurghtihhonhdrohhrgheqpdhrtghpthhtohepoehguhhsthgrvhhosegvmhgsvgguuggvughorhdrtghomheqpdhrtghpthhtohepoehlihhnuhigqdhkvghrnhgvlhesvhhgvghrrdhkvghrnhgvlhdrohhrgheq
X-RazorGate-Vade-Verdict: clean 0
X-RazorGate-Vade-Classification: clean
Received: from henry (86.152.161.91) by
 sa-prd-rgout-003.btmx-prd.synchronoss.net (5.8.340) (authenticated as
 j.oldman998@btinternet.com)
 id 5ED9AFBE088D266F; Sat, 25 Jul 2020 15:08:00 +0100
Date: Sat, 25 Jul 2020 15:07:59 +0100
From: "<John Oldman>" <john.oldman@polehill.co.uk>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH V2] Subject: [PATCH] staging: rtl8723bs: core: Using
 comparison to true is error prone
Message-ID: <20200725140759.GA15113@henry>
References: <20200725132806.15019-1-john.oldman@polehill.co.uk>
 <20200725133434.GA1143075@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200725133434.GA1143075@kroah.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 gustavo@embeddedor.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Jul 25, 2020 at 03:34:34PM +0200, Greg KH wrote:
> On Sat, Jul 25, 2020 at 02:28:06PM +0100, John Oldman wrote:
> > clear below issues reported by checkpatch.pl:
> > 
> > CHECK: Using comparison to true is error prone
> 
> Your subject line is very odd :(

Thanks, I should read all before I send: I will re-send the patch.

> 
> > Signed-off-by: John Oldman <john.oldman@polehill.co.uk>
> > ---
> > v1: Initial attempt.
> > v2: Removed unneccessary parentheses around 'pregistrypriv->ht_enable'
> > Also considered clearing 'CHECK: Logical continuations should be on the previous line' report
> > but this results in exceeding line length guideline.
> >  drivers/staging/rtl8723bs/core/rtw_ieee80211.c | 5 +++--
> >  1 file changed, 3 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/staging/rtl8723bs/core/rtw_ieee80211.c b/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
> > index ca98274ae390..7aacbe1b763e 100644
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
> > +	      && pregistrypriv->ht_enable) {
> 
>  || and && go on the end of the line, not the front.
> 
> But you also changed other things that were not needed here, and you did
> not say that in your changelog text :(
> 
> thanks,
> 
> greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
