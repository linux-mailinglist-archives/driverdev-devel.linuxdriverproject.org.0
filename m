Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5CF431E824
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Feb 2021 10:54:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E58BD87312;
	Thu, 18 Feb 2021 09:54:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WR8dJwpvIlbG; Thu, 18 Feb 2021 09:54:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DDE7387308;
	Thu, 18 Feb 2021 09:54:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F09361BF3C5
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 09:54:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E5AA986DD7
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 09:54:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BeTetyAFiJre for <devel@linuxdriverproject.org>;
 Thu, 18 Feb 2021 09:54:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com
 [209.85.128.52])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 55D9B86DA9
 for <devel@driverdev.osuosl.org>; Thu, 18 Feb 2021 09:54:36 +0000 (UTC)
Received: by mail-wm1-f52.google.com with SMTP id a132so2345075wmc.0
 for <devel@driverdev.osuosl.org>; Thu, 18 Feb 2021 01:54:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=bqxu1XNH6N6vuKS5hpG5rhVx5OT5TN5etW+zkbE577c=;
 b=c24nw6svUt67ibKOBRx130BhyE/mvqJnist90Pe3MFW7E59e+HHjKIKmepIPZW0+mj
 zm2cWAWc2KIb+b8uQGgVx+Oyw8K2ie4XIZ8KsUWrY/XexM+iv3JMVXeOJWPqxs9IssJX
 t1A+/knmVCgw8/RdfOAk1JdqrbZ7Gr2BO8nGUfALfX3Sg0nTypWzTcBv8u2l3t6/iAho
 5iiIkoHtGsWHjG1sXyA5lLwc1ylUoI5Slo8JSYuGTUJcBoNkIKYpo/nF0o1lo8KQhu5p
 9YJ2Bbz7uLpsODwueUgNXV3HbsLQLiz03gLQ2N4MMRTyZ6nwPvGr8BxvFTooaCnsQquY
 UdXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=bqxu1XNH6N6vuKS5hpG5rhVx5OT5TN5etW+zkbE577c=;
 b=Q+CNosSNMUFZCCs6HXZO9kYT+FFWjBz4S5MmyAX5+Nc9DjqgqSUePgrLVLDb9vq+IP
 fnwc1aPTiYsO1yn+bNm3wMXKjoi+yQ3lCxz2QIzpAu8SvCVWmvvfHtPpXV3CSNNcwsb5
 3vd9zAcSGdzyIOpS2JAgXl/KRXQb2ycNGydCUIET2aLBa7kb8ns9KrvKbb7KfPIHoy13
 0kqrhiqMv7UUDa1AGWLzHES5m8ee+9z3+E15jLrw/2wEX2JnEjuyrcLpPkR/8IsacLuT
 N0YcW2OoxubkltlhR4gJlV6/2hmNL+f6lRqZIgOG3dcGJSN+9LZ0MLu2LReXPVTTXoXO
 5flA==
X-Gm-Message-State: AOAM5300QkfrYtyFmIf3TA6a1gyZaAL2r5UmT7/zLSymyMVl+L5K5mjI
 /JrifA0KE/DusB4fnbg3GXI=
X-Google-Smtp-Source: ABdhPJx41OKWXgwkk3BavqYAWr6n7NoZrAqe/3s1e7Hxtll99p2ItdqNrH2WmBL2GAy5BlLT34WDlA==
X-Received: by 2002:a05:600c:2904:: with SMTP id
 i4mr2807906wmd.138.1613642074863; 
 Thu, 18 Feb 2021 01:54:34 -0800 (PST)
Received: from LEGION ([27.255.58.138])
 by smtp.gmail.com with ESMTPSA id m24sm8347545wml.36.2021.02.18.01.54.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Feb 2021 01:54:34 -0800 (PST)
Message-ID: <f44c413467df665de9bd1ecbee6d76222518c0c7.camel@gmail.com>
Subject: Re: [PATCH] staging: wimax/i2400m: don't change the endianness of
 one byte variable
From: Muhammad Usama Anjum <musamaanjum@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Date: Thu, 18 Feb 2021 14:54:28 +0500
In-Reply-To: <YC42ECUUtX1Ah90v@kroah.com>
References: <20210218092154.GA46388@LEGION> <YC42ECUUtX1Ah90v@kroah.com>
User-Agent: Evolution 3.36.4-0ubuntu1 
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
Cc: devel@driverdev.osuosl.org, wanghai38@huawei.com, arnd@arndb.de,
 gustavoars@kernel.org, linux-kernel@vger.kernel.org, kuba@kernel.org,
 johannes@sipsolutions.net, lee.jones@linaro.org, musamaanjum@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, 2021-02-18 at 10:40 +0100, Greg KH wrote:
> On Thu, Feb 18, 2021 at 02:21:54PM +0500, Muhammad Usama Anjum wrote:
> > It is wrong to change the endianness of a variable which has just one
> > byte size.
> > 
> > Sparse warnings fixed:
> > drivers/staging//wimax/i2400m/control.c:452:17: warning: cast to restricted __le32
> > drivers/staging//wimax/i2400m/control.c:452:17: warning: cast to restricted __le32
> > drivers/staging//wimax/i2400m/op-rfkill.c:159:14: warning: cast to restricted __le32
> > drivers/staging//wimax/i2400m/op-rfkill.c:160:14: warning: cast to restricted __le32
> > 
> > Signed-off-by: Muhammad Usama Anjum <musamaanjum@gmail.com>
> > ---
> >  drivers/staging/wimax/i2400m/control.c   | 4 ++--
> >  drivers/staging/wimax/i2400m/op-rfkill.c | 4 ++--
> >  2 files changed, 4 insertions(+), 4 deletions(-)
> > 
> > diff --git a/drivers/staging/wimax/i2400m/control.c b/drivers/staging/wimax/i2400m/control.c
> > index 1e270b2101e8..b6b2788af162 100644
> > --- a/drivers/staging/wimax/i2400m/control.c
> > +++ b/drivers/staging/wimax/i2400m/control.c
> > @@ -452,8 +452,8 @@ void i2400m_report_state_parse_tlv(struct i2400m *i2400m,
> >  		d_printf(2, dev, "%s: RF status TLV "
> >  			 "found (0x%04x), sw 0x%02x hw 0x%02x\n",
> >  			 tag, I2400M_TLV_RF_STATUS,
> > -			 le32_to_cpu(rfss->sw_rf_switch),
> > -			 le32_to_cpu(rfss->hw_rf_switch));
> > +			 rfss->sw_rf_switch,
> > +			 rfss->hw_rf_switch);
> 
> What do you mean by "one byte"?  This is a le32 sized variable, right?
> If not, why isn't the le32_to_cpu() call complaining?

These two variables are of type _u8, one byte. 
	__u8 sw_rf_switch;
	__u8 hw_rf_switch;
They aren't of type __le32. le32_to_cpu() macro should have
complained. But it isn't complaining. It seems like whatever we pass
to this macro, it casts it to __le32 forcefully (it seems like wrong).
So we'll never get any complain from this macro directly. But we are
getting complain from the sparse.

For big endian:
#define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
For little endian:
#define __le32_to_cpu(x) ((__force __u32)(__le32)(x))

> >  		i2400m_report_tlv_rf_switches_status(i2400m, rfss);
> >  	}
> >  	if (0 == i2400m_tlv_match(tlv, I2400M_TLV_MEDIA_STATUS, sizeof(*ms))) {
> > diff --git a/drivers/staging/wimax/i2400m/op-rfkill.c b/drivers/staging/wimax/i2400m/op-rfkill.c
> > index fbddf2e18c14..a159808f0ec2 100644
> > --- a/drivers/staging/wimax/i2400m/op-rfkill.c
> > +++ b/drivers/staging/wimax/i2400m/op-rfkill.c
> > @@ -156,8 +156,8 @@ void i2400m_report_tlv_rf_switches_status(
> >  	enum i2400m_rf_switch_status hw, sw;
> >  	enum wimax_st wimax_state;
> >  
> > -	sw = le32_to_cpu(rfss->sw_rf_switch);
> > -	hw = le32_to_cpu(rfss->hw_rf_switch);
> > +	sw = rfss->sw_rf_switch;
> > +	hw = rfss->hw_rf_switch;
> 
> Same here.

Same here.

> thanks,
> 
> greg k-h

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
