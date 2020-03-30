Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E5035198856
	for <lists+driverdev-devel@lfdr.de>; Tue, 31 Mar 2020 01:32:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6C787227E1;
	Mon, 30 Mar 2020 23:32:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OS8jY3XBVW0a; Mon, 30 Mar 2020 23:32:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A938F2034D;
	Mon, 30 Mar 2020 23:32:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BBC551BF329
 for <devel@linuxdriverproject.org>; Mon, 30 Mar 2020 23:32:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id AC06C203AF
 for <devel@linuxdriverproject.org>; Mon, 30 Mar 2020 23:32:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id I2ZsV3XFBtO7 for <devel@linuxdriverproject.org>;
 Mon, 30 Mar 2020 23:32:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by silver.osuosl.org (Postfix) with ESMTPS id DD55E2034D
 for <devel@driverdev.osuosl.org>; Mon, 30 Mar 2020 23:32:23 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id h11so7374091plr.11
 for <devel@driverdev.osuosl.org>; Mon, 30 Mar 2020 16:32:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=YmXm/3/ySoSCBdXTqKuN6yVAH5JMGZyG+4nCFBPekZ4=;
 b=q3CWQRj70zrECqtoVIaTOe9sA36DTH/LGFpudFW5IX+5PnRdFac9wnVrcA7JGuE7nP
 8weINSeAB/jP5eihsW7Qv19Fkr/Eh0iR56JjkJ6SGKLFpUv6VKYu45d2fiuZ9jt3FV1s
 OS8cdNPbJzOOu4KQpg/vuVUI3Z+ehIazsEnmzw6FknP45MBj0E7XBCUTimH7NVk6WmBV
 22gkhmg/GWoo0CYb9fRu2vf6j2+kuuZtL+abU2dNCapI2hkoCNC47SZ+IfRhKS5xBeS2
 W5NrfzK0KWKis7g/69eSkhqKjqcxjnjuD+V0vjTlPAC69lnwK32Kgbx4kXlJdarHMMYS
 RQLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=YmXm/3/ySoSCBdXTqKuN6yVAH5JMGZyG+4nCFBPekZ4=;
 b=e9gQNlWhta73mjSuLnbO7s0/kIYahgd0wOJMPBa7OVm6oCVdNi4iPAg0enrRK6TD/q
 n57GnM9SPvygNqi424p1RwfjteWxI7DvLhxMArU9Iy7tNsmArOoTbioMrjUMhAkNZYB9
 URDbKPjQdJYkNJ+ydPBzB4j0WsLqEdHScLcC7k/IWPu42eBYXhLJuRleZ+uMqu6ZBprY
 yhO3/LmnUjqvLZPgqJ6iGlW4ofsKcNNWaBulCJ7adoskO3wVADLhFDPAakEDy2hKOCBE
 54FQ8kKEWdkr/ZzirlOUkE+zoQ+2bkTV3ChNomL50ta/ZQGAw5b+KC2vmtTq01Uh4BWu
 hQvA==
X-Gm-Message-State: AGi0PuYm5HlTTGzO1uu310px6EtJJNKaOELqqE/iswyKU2B7zTeOoZvA
 vfOjq0WuqJ8MGMR5ah2HiUDxsIJFwW6YeA==
X-Google-Smtp-Source: APiQypK/B5K8y7JgEhKcVDEOrPNxlJJc4byxTjtw7DCeF2DtEgjE3cKrFMweNgL+nbTbz2mWMkfPrQ==
X-Received: by 2002:a17:90a:a414:: with SMTP id
 y20mr600264pjp.124.1585611143430; 
 Mon, 30 Mar 2020 16:32:23 -0700 (PDT)
Received: from OptiPlexFedora ([47.144.161.84])
 by smtp.gmail.com with ESMTPSA id v42sm10510446pgn.6.2020.03.30.16.32.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Mar 2020 16:32:22 -0700 (PDT)
Message-ID: <098d00e455dbc4ad5500d797b62d472160d065a5.camel@gmail.com>
Subject: Re: [PATCH v7] staging: vt6656: add error code handling to unused
 variable
From: "John B. Wyatt IV" <jbwyatt4@gmail.com>
To: Stefano Brivio <sbrivio@redhat.com>
Date: Mon, 30 Mar 2020 16:32:21 -0700
In-Reply-To: <20200331004213.1c319d94@elisabeth>
References: <20200330223718.33885-1-jbwyatt4@gmail.com>
 <20200331004213.1c319d94@elisabeth>
User-Agent: Evolution 3.34.4 (3.34.4-1.fc31) 
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
Cc: devel@driverdev.osuosl.org, Malcolm Priestley <tvboxspy@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Julia Lawall <julia.lawall@inria.fr>, outreachy-kernel@googlegroups.com,
 Forest Bond <forest@alittletooquiet.net>,
 Colin Ian King <colin.king@canonical.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, 2020-03-31 at 00:42 +0200, Stefano Brivio wrote:
> On Mon, 30 Mar 2020 15:37:18 -0700
> "John B. Wyatt IV" <jbwyatt4@gmail.com> wrote:
> 
> > Add error code handling to unused 'ret' variable that was never
> > used.
> > Return an error code from functions called within
> > vnt_radio_power_on.
> > 
> > Issue reported by coccinelle (coccicheck).
> > 
> > Suggested-by: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
> > Suggested-by: Stefano Brivio <sbrivio@redhat.com>
> > Reviewed-by: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
> > Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
> > ---
> > v7: Move an if check.
> >     Suggested by Stefano Brivio <sbrivio@redhat.com>
> > 
> > v6: Forgot to add all the v5 code to commit.
> > 
> > v5: Remove Suggested-by: Julia Lawall above seperator line.
> >     Remove break; statement in switch block.
> >     break; removal checked by both gcc compile and checkpatch.
> >     Suggested by Stefano Brivio <sbrivio@redhat.com>
> > 
> > v4: Move Suggested-by: Julia Lawall above seperator line.
> >     Add Reviewed-by tag as requested by Quentin Deslandes.
> > 
> > v3: Forgot to add v2 code changes to commit.
> > 
> > v2: Replace goto statements with return.
> >     Remove last if check because it was unneeded.
> >     Suggested-by: Julia Lawall <julia.lawall@inria.fr>
> > 
> >  drivers/staging/vt6656/card.c | 20 ++++++++++++--------
> >  1 file changed, 12 insertions(+), 8 deletions(-)
> > 
> > diff --git a/drivers/staging/vt6656/card.c
> > b/drivers/staging/vt6656/card.c
> > index dc3ab10eb630..df12c73097e0 100644
> > --- a/drivers/staging/vt6656/card.c
> > +++ b/drivers/staging/vt6656/card.c
> > @@ -723,9 +723,13 @@ int vnt_radio_power_on(struct vnt_private
> > *priv)
> >  {
> >  	int ret = 0;
> >  
> > -	vnt_exit_deep_sleep(priv);
> > +	ret = vnt_exit_deep_sleep(priv);
> > +	if (ret)
> > +		return ret;
> >  
> > -	vnt_mac_reg_bits_on(priv, MAC_REG_HOSTCR, HOSTCR_RXON);
> > +	ret = vnt_mac_reg_bits_on(priv, MAC_REG_HOSTCR, HOSTCR_RXON);
> > +	if (ret)
> > +		return ret;
> >  
> >  	switch (priv->rf_type) {
> >  	case RF_AL2230:
> > @@ -734,14 +738,14 @@ int vnt_radio_power_on(struct vnt_private
> > *priv)
> >  	case RF_VT3226:
> >  	case RF_VT3226D0:
> >  	case RF_VT3342A0:
> > -		vnt_mac_reg_bits_on(priv, MAC_REG_SOFTPWRCTL,
> > -				    (SOFTPWRCTL_SWPE2 |
> > SOFTPWRCTL_SWPE3));
> > -		break;
> > +		ret = vnt_mac_reg_bits_on(priv, MAC_REG_SOFTPWRCTL,
> > +					  (SOFTPWRCTL_SWPE2 | 
> > +					  SOFTPWRCTL_SWPE3));
> 
> Grrr, sorry, almost there, I didn't notice this: SOFTPWRCTL_SWPE3
> needs
> to be aligned *after* the open (useless) parenthesis:
> 
> 					  (SOFTPWRCTL_SWPE2 | 
> 					   SOFTPWRCTL_SWPE3));
> 
> because it's another operand of the | operation surrounded by ().
> Doesn't checkpatch warn?
> 
> The rest looks good to me.
> 

I had to switch from a VM to native and forget to put the git hook in
this repo clone.

Still, after I did, checkpatch complained about trailing white space
after SOFTPWRCTL_SWPE2 |, but not the alignment issue. Fixing the
alignment issue produced no warnings either. :(

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
