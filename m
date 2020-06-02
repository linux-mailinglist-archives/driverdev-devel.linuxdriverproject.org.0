Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79CDF1EBE83
	for <lists+driverdev-devel@lfdr.de>; Tue,  2 Jun 2020 16:57:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1E56C8820F;
	Tue,  2 Jun 2020 14:57:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cw3gbMOxebCl; Tue,  2 Jun 2020 14:57:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 91E5387B3C;
	Tue,  2 Jun 2020 14:57:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9B0DE1BF28C
 for <devel@linuxdriverproject.org>; Tue,  2 Jun 2020 14:57:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9799886637
 for <devel@linuxdriverproject.org>; Tue,  2 Jun 2020 14:57:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MiwXuEs1EjAD for <devel@linuxdriverproject.org>;
 Tue,  2 Jun 2020 14:57:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com
 [209.85.210.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B9002865DB
 for <devel@driverdev.osuosl.org>; Tue,  2 Jun 2020 14:57:21 +0000 (UTC)
Received: by mail-ot1-f68.google.com with SMTP id v17so11174725ote.0
 for <devel@driverdev.osuosl.org>; Tue, 02 Jun 2020 07:57:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=4E5ES1iIxunkqkGCzXCb8Ygxe+sM/Ttr8cZagYtaHxU=;
 b=DNt1iq/3JW2hVPJxcMSHdu1l2GoXlHN8qRgBm8MgRvLWdBLsoO21j2Oh7PMn5uT7en
 ZYcXGblzcknydUYlC4eXTx+1STVo3gcTAwqwrJc71JMX2eQf15Bf+u75qSj9Qeu3ncd/
 dHIti8EnJHWLS+hn8uAu1lPqoCcwHBtmfot4bDYTW03M7n0545NkBFN3cmXFSJPFaVjb
 zH4HoWHLx+efcADFHNjesPvCneN/cSGTfHMHdTj828BqpUk6WYQr1E+CGOy9eA2pKnRo
 bcbC3dE5laV/281k3nW9Jan1ljZmg4OV7l8LgdWaoK2kyGfxBVN4CsbPX6z+gDOaN0g4
 mGBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=4E5ES1iIxunkqkGCzXCb8Ygxe+sM/Ttr8cZagYtaHxU=;
 b=pKkVDEnuwKxFcsxB29fPW4I0HhXR7quulH2cHTBo4qs5TYm6a34x+rF0frKlAcmHUy
 TeKprbymekZoQWy1Ybrzv6cons77Ft02To0SEmADbE4Tv+/5uClxUhZ+gPB23ih+Zxo3
 //Ag0NCO0ycCckEtpVEofOjNUwRdC0XHV29IdwynR2jSx3vy7LZKis6/MoQe3fy1R1B5
 8wCsDGqNXZlCRE4Ogt6wafk7xruXxRH/n/VhVZ6aVlHP6vAsTM7vfQow3hXh/5my2j8D
 BHuSIRtDPavKIF2Q8CU5B5Ffxjh6HjZZO+Yo9QGf1CEjy1qvHwREhjlrubbuKuYjo+yI
 5p3Q==
X-Gm-Message-State: AOAM530fCMe2niu70lFbg8OIcXWYGdKCLhqUbiqtP4d6C3oHgyASCcMt
 qFWcMI2CtVLwJw93f4N+huU=
X-Google-Smtp-Source: ABdhPJwboolo886T/Rg3BzW+ssdxPJ/UF8A0AeLFgJjU2EKNTii9069g4ZX/ru365HkhBVya1RcWoQ==
X-Received: by 2002:a05:6830:549:: with SMTP id
 l9mr12691971otb.129.1591109840971; 
 Tue, 02 Jun 2020 07:57:20 -0700 (PDT)
Received: from localhost.localdomain (cpe-24-31-245-230.kc.res.rr.com.
 [24.31.245.230])
 by smtp.gmail.com with ESMTPSA id v132sm745711oif.6.2020.06.02.07.57.19
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 02 Jun 2020 07:57:19 -0700 (PDT)
Subject: Re: [PATCH] staging: rtl8712: switch to common ieee80211 headers
To: Pascal Terjan <pterjan@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
References: <20200601202410.124593-1-pterjan@google.com>
From: Larry Finger <Larry.Finger@lwfinger.net>
Message-ID: <e668fc72-9103-70cd-e545-095e88c53dcf@lwfinger.net>
Date: Tue, 2 Jun 2020 09:57:18 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <20200601202410.124593-1-pterjan@google.com>
Content-Language: en-US
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 6/1/20 3:24 PM, Pascal Terjan wrote:
> This patch switches to <linux/ieee80211.h> and <net/cfg80211.h> and
> deletes a lot of duplicate definitions plus many unused ones.
> 
> Non obvious changes:
> - struct ieee80211_ht_cap is different enough that I preferred to keep
>    (and rename) it for now.
> - mcs_rate in translate_scan was not read after being set, so I deleted
>    that part rather than using the renamed struct
> - WLAN_CAPABILITY_BSS is replaced with WLAN_CAPABILITY_ESS which is the
>    corresponding one with same value
> 
> Signed-off-by: Pascal Terjan <pterjan@google.com>

This patch does not apply to the staging repo, current mainline, or 
wireless-drivers-next. Where did you intend it to go? Staging is the correct tree.

Larry
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
