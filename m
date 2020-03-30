Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA6DA198756
	for <lists+driverdev-devel@lfdr.de>; Tue, 31 Mar 2020 00:26:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id ABDC588305;
	Mon, 30 Mar 2020 22:26:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tdctXttuQ5zv; Mon, 30 Mar 2020 22:26:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 18C3D881DC;
	Mon, 30 Mar 2020 22:26:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6CAF81BF3B5
 for <devel@linuxdriverproject.org>; Mon, 30 Mar 2020 22:26:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 61E418742D
 for <devel@linuxdriverproject.org>; Mon, 30 Mar 2020 22:26:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7L8zdUqc7i6V for <devel@linuxdriverproject.org>;
 Mon, 30 Mar 2020 22:26:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f67.google.com (mail-pj1-f67.google.com
 [209.85.216.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B9A5F86E5A
 for <devel@driverdev.osuosl.org>; Mon, 30 Mar 2020 22:26:06 +0000 (UTC)
Received: by mail-pj1-f67.google.com with SMTP id o12so222955pjs.2
 for <devel@driverdev.osuosl.org>; Mon, 30 Mar 2020 15:26:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=s+MoJHMSmcTUpq3uJxnfw8RVUGWalt2lStS+Ah7bIw8=;
 b=Ycc1KEIOagcHVpqjoqTdfsL8SXZV1i++qn05Rgy8VdmDp72xVkhS8K1vnLdiF6MQc0
 LovPWxqrUa8uOtPkhubC5G1/vHnyQgfh1cBs6LjDI96nKCBeQFfiBefGa8f7U2rvOmLp
 ZIwmTYa3aPwoL47kaUKGGZg+NyJqNd38Fn0GTuWgY1G5XevW7LmlR7EuUCI9Szc91BzI
 VS7XbAMruSlBt5pELkjNUuSF6lRdHCsM8oRvhlOUysXOf1FdwrXeJA/6wtvo5LUVNRM0
 2swl6ETvnTFp0mSnOPaXBFG9pN2iewLiDZutUQn/Uuang/YFqkEpUA47goeAmwJTnqR7
 oopw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=s+MoJHMSmcTUpq3uJxnfw8RVUGWalt2lStS+Ah7bIw8=;
 b=ZwDXXCsjra3g2D+0PzzbiBPF/G+bKxrhoSq0wFisoN9NB1lUi5wBpUcm3DoHP8UzZ9
 4+XglD+DiSMxI/c+zJdOND7EFqUg063snaonDKNko2jVgRn1khsE5ku1SvNqjphbj6uv
 nCyWvDGpFXcoWLujKALMWEJczmypdWpsR6qmQ4K/YoaXI8Mv6+IcZE+q1Fh1BGwLJ862
 bT3yhustnOjUlVIiNJeimdco1h7/yTJUrev6bxJwO0EMo3azgZu01va6IURSgFocX6Sy
 WX7qWm/Cv2RgWQBzVJHmNCsyZNup2+d2LF550eDxvIKvRIl1xsw5Stn/WmUhdKgo0kzC
 Hk+w==
X-Gm-Message-State: ANhLgQ0Ij1NsCQlvJ7aHrJ9eCRbQtbU+E+SvDAjGL/RwapD+QFBDUxIM
 I/hbeOYRp8ho3O1lHkYw0uA=
X-Google-Smtp-Source: ADFU+vuDe09EskbUbkoynvPaMH4Zoi2aALAdNwdjmmf214C52u2ClsXF+RhYKQAE8Lc6BEXqVVnCkQ==
X-Received: by 2002:a17:902:aa97:: with SMTP id
 d23mr14477810plr.244.1585607166274; 
 Mon, 30 Mar 2020 15:26:06 -0700 (PDT)
Received: from OptiPlexFedora ([47.144.161.84])
 by smtp.gmail.com with ESMTPSA id c201sm11015633pfc.73.2020.03.30.15.26.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Mar 2020 15:26:05 -0700 (PDT)
Message-ID: <61bb6678d48557895671488357a62680d0ae655f.camel@gmail.com>
Subject: Re: [PATCH v6] staging: vt6656: add error code handling to unused
 variable
From: "John B. Wyatt IV" <jbwyatt4@gmail.com>
To: Stefano Brivio <sbrivio@redhat.com>
Date: Mon, 30 Mar 2020 15:26:04 -0700
In-Reply-To: <20200331000143.7c8f98c0@elisabeth>
References: <20200330214613.31078-1-jbwyatt4@gmail.com>
 <20200331000143.7c8f98c0@elisabeth>
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

On Tue, 2020-03-31 at 00:01 +0200, Stefano Brivio wrote:
> On Mon, 30 Mar 2020 14:46:13 -0700
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
> > v6: Forgot to add all the v5 code to commit.
> > 
> > v5: Remove Suggested-by: Julia Lawall above seperator line.
> > 	Remove break; statement in switch block.
> > 	break; removal checked by both gcc compile and checkpatch.
> > 	Suggested by Stefano Brivio <sbrivio@redhat.com>
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
> > index dc3ab10eb630..c947e8188384 100644
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
> >  	}
> > +	if (ret)
> > +		return ret;
> 
> Hmm, sorry, I haven't been clear enough I guess.
> 
> This is what you're doing:
> 
> if rf_type is not in that list:
> - set some bits in a register
> - did it fail? return
> - did it fail? return
> ...
> 
> if rf_type is in that list:
> - set some bits in a register
> - did it fail? return
> - set some other bits
> - did it fail? return
> ...
> 
> Now, the "set some other bits" part is already selected depending on
> rf_type. There's no need to check 'ret' otherwise, so you can move
> the
> return just after setting 'ret', in the switch case.
> 

Thank you for pointing that out Stefano. That would be a serious issue
with logic.

Just to be sure. Are you looking for this?

switch (priv->rf_type) {
case RF_AL2230:
case RF_AL2230S:
case RF_AIROHA7230:
case RF_VT3226:
case RF_VT3226D0:
case RF_VT3342A0:
	ret = vnt_mac_reg_bits_on(priv, MAC_REG_SOFTPWRCTL,
				  (SOFTPWRCTL_SWPE2 | 
				  SOFTPWRCTL_SWPE3));
	if (ret)
		return ret;
}

> With a check, because you don't want to return if ret == 0.
> 

What do you mean exactly by this?

The new code should only return a 0 at the end of the function with the
vnt_mac_reg_bits_off call.


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
