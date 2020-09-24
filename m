Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E3C9A277836
	for <lists+driverdev-devel@lfdr.de>; Thu, 24 Sep 2020 20:04:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 69B4686BAF;
	Thu, 24 Sep 2020 18:04:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uIjmc3oyObIX; Thu, 24 Sep 2020 18:04:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id DFF1186A83;
	Thu, 24 Sep 2020 18:04:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id ACB141BF859
 for <devel@linuxdriverproject.org>; Thu, 24 Sep 2020 18:04:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A39AD86AAB
 for <devel@linuxdriverproject.org>; Thu, 24 Sep 2020 18:04:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id t9PnygmbiIms for <devel@linuxdriverproject.org>;
 Thu, 24 Sep 2020 18:04:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C00D886890
 for <devel@driverdev.osuosl.org>; Thu, 24 Sep 2020 18:04:02 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id s13so307293wmh.4
 for <devel@driverdev.osuosl.org>; Thu, 24 Sep 2020 11:04:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=NZUqV6Bvzd8cGlLiOqTGcuZ1Yef+3Qfd3N7B6yq5MdA=;
 b=HB2Z7wdE+cy1f1BINbMce7aOoq/uiu1TMnlcSs9JQDre4pgVVzO6fdURIEYL6hrLNo
 5/wIatPv3/aPCtjtNm033NNIiRbiqrOnzOENMUWs1pt0zSxlB7K2+EQD3a7BhmZb0/jI
 SC0/Yv55lCa605Gfww5F6gCt2rf6u6qGyc5WltCIuGLVIloM+iIFih7Znq7Znz0gVNwg
 9gpmacAJRU7YnapRhXS/qASNua3g9xSm1/LOgoj9CznLwjPNN/duVoIRAWZOWELTwSZU
 qrw8Mk1WbhDZW3G11MFQo2cq4Xpu0Yj5oaANHWvCZAsLR/YsBGeqtTymAHIApAEUtvqL
 1ZPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=NZUqV6Bvzd8cGlLiOqTGcuZ1Yef+3Qfd3N7B6yq5MdA=;
 b=aKQXmPrp3ZQgaZ3Um0qGSIb9rsvxTAqUVwFwIfiO41Rd943N1q7ltocUUExcMxWVtb
 QRVQmLMcOEgy3+D8+eTksZENSiGzDRl0e1L8GGd6DC6MZ1pSh+ceke3hMFWH9Fm8OgXl
 ctxcGQPtWJG7Khka91apEg2Rc2PXpYKMEbVTwndnihKdyVRL0TRErum/6xrK/AAY6jY2
 vOjVGLGJcWVPvsvGDFttBDPNDRqktlaH9oR0uurVxkGbpnyxCX/TtzCmm8+xQTlK8CGo
 WKZAww+SrMDhYbGmvcyVln+GBmV1gpJ6FnxYpE93+PJVZPM75IODadHotwD6/UtkhHhx
 74gQ==
X-Gm-Message-State: AOAM530xi0p1hY8zI+lrOQPL/jHQXHfJqFdk9zGwiEBNmJcshIjswZvQ
 yT2C5yk1ZbwgdvkVnGFhUqP34g==
X-Google-Smtp-Source: ABdhPJxgdbm5WtFN36J7bm9N5ZXswxOvraqE3+QPtP6NridZqs70Eg1VUO0GwuKYSQ84Q+b1z4edDw==
X-Received: by 2002:a1c:a987:: with SMTP id s129mr406580wme.38.1600970641058; 
 Thu, 24 Sep 2020 11:04:01 -0700 (PDT)
Received: from Red ([2a01:cb1d:3d5:a100:264b:feff:fe03:2806])
 by smtp.googlemail.com with ESMTPSA id n66sm94350wmb.35.2020.09.24.11.03.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Sep 2020 11:04:00 -0700 (PDT)
Date: Thu, 24 Sep 2020 20:03:58 +0200
From: LABBE Corentin <clabbe@baylibre.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH RFT/RFC 37/49] staging: media: zoran: add fallthrough
 keyword
Message-ID: <20200924180358.GA26916@Red>
References: <1600683624-5863-1-git-send-email-clabbe@baylibre.com>
 <1600683624-5863-38-git-send-email-clabbe@baylibre.com>
 <20200921105945.GC4282@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200921105945.GC4282@kadam>
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
 linux-kernel@vger.kernel.org, laurent.pinchart@skynet.be, mchehab@kernel.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Sep 21, 2020 at 01:59:45PM +0300, Dan Carpenter wrote:
> On Mon, Sep 21, 2020 at 10:20:12AM +0000, Corentin Labbe wrote:
> > This patch adds fallthrough keyword where appropriate.
> > 
> > Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> > ---
> >  drivers/staging/media/zoran/zoran_device.c | 6 ++++++
> >  1 file changed, 6 insertions(+)
> > 
> > diff --git a/drivers/staging/media/zoran/zoran_device.c b/drivers/staging/media/zoran/zoran_device.c
> > index 9558bafdde7d..7634d94f9359 100644
> > --- a/drivers/staging/media/zoran/zoran_device.c
> > +++ b/drivers/staging/media/zoran/zoran_device.c
> > @@ -268,7 +268,9 @@ static void zr36057_adjust_vfe(struct zoran *zr, enum zoran_codec_mode mode)
> >  		btwrite(reg, ZR36057_VFEHCR);
> >  		break;
> >  	case BUZ_MODE_MOTION_COMPRESS:
> > +		fallthrough;
> >  	case BUZ_MODE_IDLE:
> > +		fallthrough;
> >  	default:
> 
> Hopefully, we don't need fallthrough labels for empty switch statements
> like this?
> 

I have removed this patch and nothing warn about fallthrough missing.
But this is strange, if I have added them, it is because something (checkpatch ?) complained.

Anyway, nothing complains now, it is cleaner without them.

Thanks
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
