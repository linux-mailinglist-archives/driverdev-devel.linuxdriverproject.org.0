Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 746CF2C86DB
	for <lists+driverdev-devel@lfdr.de>; Mon, 30 Nov 2020 15:34:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 55BCD228F1;
	Mon, 30 Nov 2020 14:34:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VxOaNp7gBg+V; Mon, 30 Nov 2020 14:34:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id BBB2222882;
	Mon, 30 Nov 2020 14:34:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 71C321BF418
 for <devel@linuxdriverproject.org>; Mon, 30 Nov 2020 14:34:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6C7C8871F0
 for <devel@linuxdriverproject.org>; Mon, 30 Nov 2020 14:34:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id m2LLZdeIOBm0 for <devel@linuxdriverproject.org>;
 Mon, 30 Nov 2020 14:34:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oo1-f66.google.com (mail-oo1-f66.google.com
 [209.85.161.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9C33E871DB
 for <devel@driverdev.osuosl.org>; Mon, 30 Nov 2020 14:34:38 +0000 (UTC)
Received: by mail-oo1-f66.google.com with SMTP id z13so2719797ooa.5
 for <devel@driverdev.osuosl.org>; Mon, 30 Nov 2020 06:34:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Xx61GuftaKYVa9WLN4j9k312lVeLN++lqfRINw9TeD0=;
 b=WvasUvHCh+NQ/HAdniplRO/L7h44qR9ya9sJScI5FO76kHFJgrC37WrAne73fHlx0b
 mZwcbf3T8wjHUvjbRLX58jL+fnO4FQ9RVR13vVV74kEKKNyjzGp+Hj8pp6DqIPUUs55s
 Pse3v04OBszrAnMCcoeD55GXcMfa3TtarygagT/YcUYSWb3ImrXh2iBzHa2+/vjm6oiA
 jSLhMeweGnjxccUqFU3F3MzJCfe46wl8R774u412Hua+XyR+hOL9+5VLLqWxaNWljjYJ
 qH2ogauF4hTlChv91lTfurxuup5+ZIPf2L5JaSWuKS3NNNbmDrmaTttoByvKl53OVJsf
 J3iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Xx61GuftaKYVa9WLN4j9k312lVeLN++lqfRINw9TeD0=;
 b=fLO2R9o6vEVec8FejKJM9Cqau/TmrJuUVleIEetx62kHKmBSEFv/4y4mYkZEeoOGG0
 7MxcAb0SeU7z0f8qO1TQqT0F0p2AHVwWxddcegBnlxSAv0UhR9nPqBTH3Oss96y0XrKh
 LKYDlmY6mBzALJpiyVFTy3cXH/gBloBq01JyUBAED488uimNe+oyeBjECzCnDn669hO7
 q6536eVuQz31F9nqoyZPfP6XA8Cn5FD86UCN/ziCmUeaDIUmqPviWL7RdZzZS6RwO2ev
 e3CZwHLl92T+jv6BqcCwxeKV13vqiH8S4CHBgnWfXWaxEJaeXgpDHZyJ+m6VGwfEHxCr
 FBWQ==
X-Gm-Message-State: AOAM531LIUKmSHB1RSQJi0SL8s/in8C+Qtf/UaB2b0WU6h4CCyPdh91b
 LDNr/OJ3c34lQSWXJDzEqA0eFFqJEs6kSRvTA/8=
X-Google-Smtp-Source: ABdhPJwTlSnkqi4iPQ9HKCKFmiuc9jxwRXyrTcUCYiuHR/IbRtKNumJ3rGJCbvQon2i1zByXq2aJM8nRe0AuA19qpAQ=
X-Received: by 2002:a4a:b548:: with SMTP id s8mr15521966ooo.77.1606746877873; 
 Mon, 30 Nov 2020 06:34:37 -0800 (PST)
MIME-Version: 1.0
References: <20201031122246.16497-1-sergio.paracuellos@gmail.com>
 <20201031122246.16497-3-sergio.paracuellos@gmail.com>
 <20201119053059.GY50232@vkoul-mobl>
 <CAMhs-H8uyoVGUjrG_V2ueZN1UC7jSMZ-6E4YCDw1xqGKNFPv5w@mail.gmail.com>
 <20201130121506.GB2767@kadam>
In-Reply-To: <20201130121506.GB2767@kadam>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Mon, 30 Nov 2020 15:34:26 +0100
Message-ID: <CAMhs-H-yNWbO0vWBU2B6BfnZ0j8=p2G9ZQh-3aOxjQDEhMxVRQ@mail.gmail.com>
Subject: Re: [PATCH v4 2/4] phy: ralink: Add PHY driver for MT7621 PCIe PHY
To: Dan Carpenter <dan.carpenter@oracle.com>
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Greg KH <gregkh@linuxfoundation.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, NeilBrown <neil@brown.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Dan,

On Mon, Nov 30, 2020 at 1:15 PM Dan Carpenter <dan.carpenter@oracle.com> wrote:
>
> On Thu, Nov 19, 2020 at 07:05:22AM +0100, Sergio Paracuellos wrote:
> > > > +static inline void phy_write(struct mt7621_pci_phy *phy, u32 val, u32 reg)
> > > > +{
> > > > +     regmap_write(phy->regmap, reg, val);
> > >
> > > Why not use regmap_ calls directly and avoid the dummy wrappers..?
> >
> > This is because name was the dummy names are a bit shorter :) but if
> > it is also necessary I will use directly regmap_ functions.
>
> At least don't swap the last two arguments around.

You are right. I don't really know why I changed the order there but
those have been deleted in applied series.

>
> regards,
> dan carpenter

Best regards,
    Sergio Paracuellos
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
