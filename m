Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E03F107FB4
	for <lists+driverdev-devel@lfdr.de>; Sat, 23 Nov 2019 18:59:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 18E8188302;
	Sat, 23 Nov 2019 17:59:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id X6x2Hx8V6pjm; Sat, 23 Nov 2019 17:59:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B19DF88296;
	Sat, 23 Nov 2019 17:59:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4060F1BF20B
 for <devel@linuxdriverproject.org>; Sat, 23 Nov 2019 17:59:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3CC74203F4
 for <devel@linuxdriverproject.org>; Sat, 23 Nov 2019 17:59:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0+OqHxnOkfX9 for <devel@linuxdriverproject.org>;
 Sat, 23 Nov 2019 17:59:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f194.google.com (mail-oi1-f194.google.com
 [209.85.167.194])
 by silver.osuosl.org (Postfix) with ESMTPS id E9FA220134
 for <devel@driverdev.osuosl.org>; Sat, 23 Nov 2019 17:59:28 +0000 (UTC)
Received: by mail-oi1-f194.google.com with SMTP id o12so9454268oic.9
 for <devel@driverdev.osuosl.org>; Sat, 23 Nov 2019 09:59:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=tiHa8wg0xKw8eHEQWFxtmRKRM2wgS5M3VjCm3UfWPpQ=;
 b=Au+ll1GNHOI0ui+2SH8xUU7Q2fUqX7N7w7z3ix1gDEngW+8K0ZQthLlqvfVLVJpigs
 S7uKjAIuy574UxD6tTtoMT7XeLnlYYUnvKf263VAGkNHavJb/7NknVkof2kMvTnOzATy
 wndR772MlAAdJRaYmDUTBx9Rl2Jfy7KreAfNSnkzKnDRmii6zc2aw0gmhLP9mqXTGH1e
 AhW7K5A2P3PQa2fHK+ClbeUvy7Zr3edrb5/pxEa0aIbD+zgj345zSaOUHk8YBALuMeK4
 oDJEXF0FUOjbrLOCWHOcRgcblBXJ2JWxEjUuy1AGuUSGvBJGR4wzXYFtD5bguxyyG4WX
 tVyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=tiHa8wg0xKw8eHEQWFxtmRKRM2wgS5M3VjCm3UfWPpQ=;
 b=H9XeJpbnIwa5QBFKObRorvUZwxq90wL+n8VUHFib2f/xbumPx/vsdxNnwpl5McFk/H
 r0++Wv10y8yPBGXPhyxfYhuP3KmUUB8loC+GVSnVFT034VaHqdNPWJp6KsxvPx/Nvl3a
 heQPY4VtaSVzldEFTd5PBoNlHTgszPVaskOvUAAIjSx/rQ37BRwrKfE4Vqiz1PcrJbuU
 O5OFyEZV9DvBX9Sa1sZGJu/9MYg1rb6fofJmNYQYNvRrJMVK/NbMileKsRuc1AAV7eez
 p1qk7PwAf8iI6Ncwmtmx/rA8DTPZT4hKSAdkSwG2o5biCGkESS18dKT83ehKZKY8xMOw
 NLxQ==
X-Gm-Message-State: APjAAAVpSyMybRieg6JzeRVjgFT9ApET4CsST1WKl3DqjhXHXpyJItsO
 6n0p0LPPBC3xRIbMZpD2vGI=
X-Google-Smtp-Source: APXvYqxWn+kG92vxuUPUBaYTcvrqHSIX0vD5Lb7dUjrtna43YdZpa7ZiaF9Eaqj2meDo3GhdR4Zt+w==
X-Received: by 2002:aca:f495:: with SMTP id s143mr1892013oih.118.1574531968172; 
 Sat, 23 Nov 2019 09:59:28 -0800 (PST)
Received: from [192.168.1.112] (cpe-24-31-245-230.kc.res.rr.com.
 [24.31.245.230])
 by smtp.gmail.com with ESMTPSA id u22sm664113oiv.36.2019.11.23.09.59.27
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 23 Nov 2019 09:59:27 -0800 (PST)
Subject: Re: [PATCH 1/3] staging: rtl8188eu: remove unnecessary parentheses in
 rtw_pwrctrl.c
To: Michael Straube <straube.linux@gmail.com>, gregkh@linuxfoundation.org
References: <20191123151635.155138-1-straube.linux@gmail.com>
From: Larry Finger <Larry.Finger@lwfinger.net>
Message-ID: <fdfb10ff-b9e1-d5e0-e5ae-484847570a27@lwfinger.net>
Date: Sat, 23 Nov 2019 11:59:26 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191123151635.155138-1-straube.linux@gmail.com>
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

On 11/23/19 9:16 AM, Michael Straube wrote:
> Remove unnecessary parentheses reported by checkpatch.
> 
> Signed-off-by: Michael Straube <straube.linux@gmail.com>
> ---
>   drivers/staging/rtl8188eu/core/rtw_pwrctrl.c | 12 ++++++------
>   1 file changed, 6 insertions(+), 6 deletions(-)

Acked-by: Larry Finger <Larry.Finger@lwfinger.net>

Thanks,

Larry

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
