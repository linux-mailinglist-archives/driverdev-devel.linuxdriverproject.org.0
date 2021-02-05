Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 94B47311678
	for <lists+driverdev-devel@lfdr.de>; Sat,  6 Feb 2021 00:17:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A5EDB2E154;
	Fri,  5 Feb 2021 23:16:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i9k7dEDSBBlO; Fri,  5 Feb 2021 23:16:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D1C512E14E;
	Fri,  5 Feb 2021 23:16:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E00071BF2E5
 for <devel@linuxdriverproject.org>; Fri,  5 Feb 2021 23:16:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D9ACA86BA3
 for <devel@linuxdriverproject.org>; Fri,  5 Feb 2021 23:16:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id smhHf9jqrIDj for <devel@linuxdriverproject.org>;
 Fri,  5 Feb 2021 23:16:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com
 [209.85.210.50])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id EF6E186B84
 for <devel@driverdev.osuosl.org>; Fri,  5 Feb 2021 23:16:53 +0000 (UTC)
Received: by mail-ot1-f50.google.com with SMTP id o12so8479005ote.12
 for <devel@driverdev.osuosl.org>; Fri, 05 Feb 2021 15:16:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=rwe5uVEsJGK5yJWOuT60cjDB4g4zMZRqI4yHWXKKFDI=;
 b=IM6esCCJ8RSmF8l/G+Bs94LbX/NU9QtFerWFm8Ry+QRZ2aK1X/5vZ7KM8dXRk/gcxc
 +lLPPO5A28xF9bzh0Og4iaO04fE9OAbpRTlncabU5ttXENHcJywW0KqltVuDsYavSsmA
 luTp2pKBk0buMzX7l88tKH/zeAnM2hVyXpTOyjWFgkEu3OA1Z/gWH83ap+50Fk5JHA76
 VSBrZph6h+eeQXVQoncFCHJfnN2HdMaTiiSUIdyRSWP6TqSje5NDRfwLpgU5TyykxK4/
 HE/kqZVwz4VKy+/dZ6XOGai/g97A9ngk/VqlCQeef8G73vdxrBtpksXp2RSg/rDw2+VV
 tNqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=rwe5uVEsJGK5yJWOuT60cjDB4g4zMZRqI4yHWXKKFDI=;
 b=tujJzzhvuUcA2RhPll0i1QfJ2boeSMlSS/xIQtxYDZ6gkX6JsPyDHTmq5rPFgXEFsD
 Sxc1mL0ztmX0att15x1tpYytvH+rzJ+JpHoHr49lka5Lb1dsF6wHhr4KduvCULyKIcE2
 xBXZOhdBs7M7bQWI0rrlS+zC1CNB5aYCzPVErsjvyaS6B6mP9mp/GoCG40SnNjoAYQDn
 DkhtXXXxWE7SaZN4PDE9ed2gCGTr1Wo+2Rsx2PC6qslGVQKO/ASLO3zkRtHrKKzKYwk6
 jjW0VROPVz1DkLIz4JB7sYXVxLFGXuYlBcBJigxMSbOxMUbYT3Ge5rfGYJ9tCxkUyvRW
 sdyw==
X-Gm-Message-State: AOAM530xJYJT2VyxP3rsk9JLIzS3EFXHwZBn03xHkj+q6AIaITePOVv0
 uWutMimSXKZMo8AsSbcAXkA=
X-Google-Smtp-Source: ABdhPJxqRVskNlO0mie8LeYeds1HCwXPOcoIn1x549FmvwaAzQv14DWVVBBJ1Y0bMHPKm38eNyYGYA==
X-Received: by 2002:a9d:6757:: with SMTP id w23mr5302278otm.101.1612567013247; 
 Fri, 05 Feb 2021 15:16:53 -0800 (PST)
Received: from localhost.localdomain (cpe-24-31-245-230.kc.res.rr.com.
 [24.31.245.230])
 by smtp.gmail.com with ESMTPSA id o98sm2121605ota.0.2021.02.05.15.16.52
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 05 Feb 2021 15:16:52 -0800 (PST)
Subject: Re: [PATCH] staging: rtl8188eu: Add Edimax EW-7811UN V2 to device
 table
To: Martin Kaiser <martin@kaiser.cx>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <20210204085217.9743-1-martin@kaiser.cx>
From: Larry Finger <Larry.Finger@lwfinger.net>
Message-ID: <134235b7-f15d-9ac9-5fc9-58f3628479aa@lwfinger.net>
Date: Fri, 5 Feb 2021 17:16:51 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210204085217.9743-1-martin@kaiser.cx>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 2/4/21 2:52 AM, Martin Kaiser wrote:
> The Edimax EW-7811UN V2 uses an RTL8188EU chipset and works with this
> driver.
> 
> Signed-off-by: Martin Kaiser <martin@kaiser.cx>
> ---
>   drivers/staging/rtl8188eu/os_dep/usb_intf.c | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/staging/rtl8188eu/os_dep/usb_intf.c b/drivers/staging/rtl8188eu/os_dep/usb_intf.c
> index 43ebd11b53fe..efad43d8e465 100644
> --- a/drivers/staging/rtl8188eu/os_dep/usb_intf.c
> +++ b/drivers/staging/rtl8188eu/os_dep/usb_intf.c
> @@ -41,6 +41,7 @@ static const struct usb_device_id rtw_usb_id_tbl[] = {
>   	{USB_DEVICE(0x2357, 0x0111)}, /* TP-Link TL-WN727N v5.21 */
>   	{USB_DEVICE(0x2C4E, 0x0102)}, /* MERCUSYS MW150US v2 */
>   	{USB_DEVICE(0x0df6, 0x0076)}, /* Sitecom N150 v2 */
> +	{USB_DEVICE(0x7392, 0xb811)}, /* Edimax EW-7811UN V2 */
>   	{USB_DEVICE(USB_VENDER_ID_REALTEK, 0xffef)}, /* Rosewill RNX-N150NUB */
>   	{}	/* Terminating entry */
>   };
> 

Acked-by: Larry Finger <Larry.Finger@lwfinger.net>

Larry

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
