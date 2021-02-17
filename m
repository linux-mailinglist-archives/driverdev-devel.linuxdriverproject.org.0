Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E85B31D596
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Feb 2021 07:59:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C0F396F5F0
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Feb 2021 06:59:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6_00ppXta3a4 for <lists+driverdev-devel@lfdr.de>;
	Wed, 17 Feb 2021 06:59:34 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 5470C6F5F8; Wed, 17 Feb 2021 06:59:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 44DB06F4BA;
	Wed, 17 Feb 2021 06:59:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 523561BF20B
 for <devel@linuxdriverproject.org>; Wed, 17 Feb 2021 06:59:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4DD338569B
 for <devel@linuxdriverproject.org>; Wed, 17 Feb 2021 06:59:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SGuaKxvpRQdf for <devel@linuxdriverproject.org>;
 Wed, 17 Feb 2021 06:59:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com
 [209.85.210.43])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6FF8285659
 for <devel@driverdev.osuosl.org>; Wed, 17 Feb 2021 06:59:04 +0000 (UTC)
Received: by mail-ot1-f43.google.com with SMTP id o10so446868ote.13
 for <devel@driverdev.osuosl.org>; Tue, 16 Feb 2021 22:59:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YbjfjYta5sV8enFGeBHD9iVlSdE6T1W0VjCM7Pv5gRY=;
 b=QPLhm1DYU3gzhCacsYqU2Xh6jgbyz4u5pM6qIcqdkwkMnPBeeYsuMPVps3IArhzIH+
 M+MhX/Mx+6nkxbBdHnE/KFCoGIv5UJyBkaTVr/0N6h1re626SvU8N/rlpO+bBGy1Cvel
 OhweLPrRqU8L8jPCoh+P+HmQTMx79KYxMlbU1MWNRItqkB+BJk9TcckOFK4RE6gawLPk
 Qr8y2BPMo0qCGhCckHRTVXOKF83GzQK37kxRXI6+YjG/ik0bzIe9xu8Mnd4D9R4WfZDz
 8Wy/tLW4qSl2aKZ37TUZoWxLGuaQQwcnuFnn/pRZpy+mTTgirTD9H77fLNIhCEL12Gf2
 E3AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YbjfjYta5sV8enFGeBHD9iVlSdE6T1W0VjCM7Pv5gRY=;
 b=CChiRkPWwpvyzzGPwWw3rXVSJAyN32hpPCet7t0y3T8QnpUIF/kAQQXM3qsTjFChkb
 LyJaUhShK0CsPaHYZFwrih4o+gEApDt0AORpuL1K2QerdeQ+w95+pHtHRaE0iAo7KbTU
 Wwe/NrFkcqMBRpa5YOv4U7Set7J4eZVlLSV9xXdect8a6pMcniWMFs16oJ4TxL18NLXL
 JravgNZR34IY42xnjWXjBynOO1dJjli4lNpgVBjgME/x7A8EvPWfKXgCCVaNrDhM+ovK
 NguMqSZXYNP4SpXRd5jl1O+cLDTHOb19H063MmiqqZcXStp9NhzCLS2fHbtTod5cvLbU
 nupw==
X-Gm-Message-State: AOAM530hJvLOXZJGVo0CjkjOZhznqZibrjFIp6pdNwVH8/JXSkj65Qfg
 ch7Ld0F3mn+pTebH1TX0fRQb3nGHts/BASNTXAE=
X-Google-Smtp-Source: ABdhPJyKVNYPxfx4WcKXdTfB2zXkaqpLkAvWwVawlsvzYTijOr6TLnNZRf/agDtcSveXe1UXjmhigvYgfBeauSGs/Pw=
X-Received: by 2002:a05:6830:120c:: with SMTP id
 r12mr17075240otp.72.1613545143740; 
 Tue, 16 Feb 2021 22:59:03 -0800 (PST)
MIME-Version: 1.0
References: <20210217065318.6685-1-selvakumar16197@gmail.com>
In-Reply-To: <20210217065318.6685-1-selvakumar16197@gmail.com>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Wed, 17 Feb 2021 07:58:52 +0100
Message-ID: <CAMhs-H-FTUxSFAsbNe9Gja4f6WR2259KQpZ3q5ByP7hYnXzwyw@mail.gmail.com>
Subject: Re: [PATCH] Staging: mt7621-pci: pci-mt7621: fixed a blank line
 coding style issue
To: Selvakumar Elangovan <selvakumar16197@gmail.com>
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
Cc: Matthias Brugger <matthias.bgg@gmail.com>,
 Greg KH <gregkh@linuxfoundation.org>,
 "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Selvakumar,

On Wed, Feb 17, 2021 at 7:53 AM Selvakumar Elangovan
<selvakumar16197@gmail.com> wrote:
>
> Removed an unecessary blank line before closing brace reported by
> checkpatch.pl

Typo:

s/unecessary/unnecessary/g

>
> Signed-off-by: Selvakumar Elangovan <selvakumar16197@gmail.com>
> ---
>  drivers/staging/mt7621-pci/pci-mt7621.c | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/drivers/staging/mt7621-pci/pci-mt7621.c b/drivers/staging/mt7621-pci/pci-mt7621.c
> index c3532bc138fb..1781c1dcf5b4 100644
> --- a/drivers/staging/mt7621-pci/pci-mt7621.c
> +++ b/drivers/staging/mt7621-pci/pci-mt7621.c
> @@ -521,7 +521,6 @@ static void mt7621_pcie_init_ports(struct mt7621_pcie *pcie)
>
>                         if (slot == 1 && tmp && !tmp->enabled)
>                                 phy_power_off(tmp->phy);
> -
>                 }
>         }
>  }
> --
> 2.17.1
>

Please, also change commit short message to:

staging: mt7621-pci: fixed a blank line coding style issue

With that changes:

Reviewed-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>

Best regards,
    Sergio Paracuellos
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
