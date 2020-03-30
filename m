Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D9471986C4
	for <lists+driverdev-devel@lfdr.de>; Mon, 30 Mar 2020 23:47:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B6C4E23420;
	Mon, 30 Mar 2020 21:47:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id G790zUh9UUGW; Mon, 30 Mar 2020 21:47:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B226122E96;
	Mon, 30 Mar 2020 21:47:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 036DD1BF3C3
 for <devel@linuxdriverproject.org>; Mon, 30 Mar 2020 21:47:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id F021E868EF
 for <devel@linuxdriverproject.org>; Mon, 30 Mar 2020 21:47:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VXgKXYUfQPVe for <devel@linuxdriverproject.org>;
 Mon, 30 Mar 2020 21:47:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f67.google.com (mail-pj1-f67.google.com
 [209.85.216.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7C41D86722
 for <devel@driverdev.osuosl.org>; Mon, 30 Mar 2020 21:47:20 +0000 (UTC)
Received: by mail-pj1-f67.google.com with SMTP id nu11so185743pjb.1
 for <devel@driverdev.osuosl.org>; Mon, 30 Mar 2020 14:47:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=en1IQMIc1TSs5b2IKh+4WaDfSDdVceKaSf3PzbyQVGk=;
 b=QYDZvqgySdojAuttsMOyUaM59cNDeHhD6pD5L2vS9lo2vYP742n43Ujw1Tg+IkNjSW
 pRH+VgRK6qCCyDXUQZfye0Snj/Eno6WQWXm8dbkZY9LhTvj02sxEljw63gM0iXhtxi+l
 C8Shy3SisPiKds6rbsVtHoEV87N7zXc6nWlmIW7Snyj2FpD1wLdSxn0mmi2ljNGj67ZX
 MloEciRVc7nOmgCrZMBlXk4uHqIi4qf3GUCKDCOSdxHWDUsM71CBa8XKycF+QN7mwCS8
 KiZaxuR4dT10NUHZD1KeUELRQdKmStLqECScfOAkEu6mXbBWY5Ad+IEmJdSP81M7RrW5
 xspw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=en1IQMIc1TSs5b2IKh+4WaDfSDdVceKaSf3PzbyQVGk=;
 b=R+kGQm716V+60AJMrTXM4/RJxT85R6eN51MCCzU4MqxT/day2K0y9gXn02VTkfjuvn
 hW43/TdrYIBmtm32YXzaN5ghkfnhv0z0/JaH1FurXrbFChFAIXnpXm1fcB94JxFF3pS0
 tP+qweH1j5Nm6kO2KrLjP4+ErJUnGE3/mBk2dP9Zwm+ljJIldG8okDeKUp/L8v0dc/a9
 QT9SRVLBvq8sGZY73HsLiwg5JdSroqqIwXx/0LNyO3cMMgyf3epqUjuZ9AL0FX0osNpg
 3N0p8udBzIhRrYEwWZygDsngvQKRtaOLwuvojpV60BiOsJSE5ViqgYOIfWETAxq5NlmL
 nkEQ==
X-Gm-Message-State: AGi0PuYBH7VROatdxGyG4mUo1KrPV21xS3Ka9/G/iKY7DkrhcNYyrRgV
 Z1u8ArtLxGUYAWiZEIcRol8=
X-Google-Smtp-Source: APiQypKO9FNhqZtpIqoCfW/g91iF4UaQSHBTM3F8V9VJxyYM7VjGkDR2yG+cZqDTO++HN2wJHdfClQ==
X-Received: by 2002:a17:90b:8c4:: with SMTP id ds4mr212979pjb.44.1585604840076; 
 Mon, 30 Mar 2020 14:47:20 -0700 (PDT)
Received: from OptiPlexFedora ([47.144.161.84])
 by smtp.gmail.com with ESMTPSA id z12sm11387743pfj.144.2020.03.30.14.47.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Mar 2020 14:47:19 -0700 (PDT)
Message-ID: <5d2cda14795500ae6cc862b98907a7210688269f.camel@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v5] staging: vt6656: add error code
 handling to unused variable
From: "John B. Wyatt IV" <jbwyatt4@gmail.com>
To: Stefano Brivio <sbrivio@redhat.com>
Date: Mon, 30 Mar 2020 14:47:18 -0700
In-Reply-To: <20200330230634.3b905158@elisabeth>
References: <20200330184517.33074-1-jbwyatt4@gmail.com>
 <20200330230634.3b905158@elisabeth>
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

On Mon, 2020-03-30 at 23:06 +0200, Stefano Brivio wrote:
> On Mon, 30 Mar 2020 11:45:17 -0700
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
> > v5: Remove Suggested-by: Julia Lawall above seperator line.
> >     Remove break; statement in switch block.
> >     break; removal checked by both gcc compile and checkpatch.
> > 
> > [...]
> > 
> > @@ -734,14 +738,15 @@ int vnt_radio_power_on(struct vnt_private
> > *priv)
> >  	case RF_VT3226:
> >  	case RF_VT3226D0:
> >  	case RF_VT3342A0:
> > -		vnt_mac_reg_bits_on(priv, MAC_REG_SOFTPWRCTL,
> > -				    (SOFTPWRCTL_SWPE2 |
> > SOFTPWRCTL_SWPE3));
> > +		ret = vnt_mac_reg_bits_on(priv, MAC_REG_SOFTPWRCTL,
> > +					  (SOFTPWRCTL_SWPE2 | 
> > +					  SOFTPWRCTL_SWPE3));
> >  		break;
> >  	}
> > +	if (ret)
> > +		return ret;
> 
> Did you send the wrong version perhaps?
> 

Yes. My apologies. Please see v6.

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
