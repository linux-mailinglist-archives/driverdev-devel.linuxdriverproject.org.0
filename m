Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 55C804830D7
	for <lists+driverdev-devel@lfdr.de>; Mon,  3 Jan 2022 13:04:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 876FD40357;
	Mon,  3 Jan 2022 12:04:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3Z-FxgsgDzi1; Mon,  3 Jan 2022 12:04:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E526E40348;
	Mon,  3 Jan 2022 12:04:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B0EB21BF33E
 for <devel@linuxdriverproject.org>; Mon,  3 Jan 2022 12:04:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AD57C60AC2
 for <devel@linuxdriverproject.org>; Mon,  3 Jan 2022 12:04:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nAjsaQb2th9S for <devel@linuxdriverproject.org>;
 Mon,  3 Jan 2022 12:04:41 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com
 [IPv6:2a00:1450:4864:20::532])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7EA4C60A9B
 for <devel@driverdev.osuosl.org>; Mon,  3 Jan 2022 12:04:41 +0000 (UTC)
Received: by mail-ed1-x532.google.com with SMTP id o6so135092846edc.4
 for <devel@driverdev.osuosl.org>; Mon, 03 Jan 2022 04:04:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=yUUBr+kBGeBcq3Ep5zPtjMHNJudLazXCTtUrSx+Rq9I=;
 b=DK8r62T0DISJWzPM9qOURdZ603vIi606CyB7DdIUsEIKpnNSLrm2dMkTDMZRrT61aH
 x2XioskTISNsnNtMVThj3ty3IuyhSBY9duwdVHm5ipdii05FFIH2BoJo3aIErSaywonW
 K3fgl0ArCjNz2PHSIQy9fCuhUSdRSKjMOO5STABXWfKOAlrW3Htfp/zsb+Iyp5+Nx8Yd
 RcIOr5e6HrYWSz3CFT+vlOXtxK1jfPfR2bTjxqyfCJoc+bPAJtokpylAe6zY7vjfFID0
 hNbbpVuV+9D43/fVoVAjeTxnbvw8RtL75OXDjSiE1NnHGbqjxgrDtYGpfRb2/StnzPJN
 ipSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=yUUBr+kBGeBcq3Ep5zPtjMHNJudLazXCTtUrSx+Rq9I=;
 b=XNCYN9bulA0CGis5KrsRy0Kq3At5c0YDyrkUaVMC1ss1ZkMW8dTDKz6ePOJU84A6Kh
 jI/J/C1t1HcIRdmmQYlMN8KMIfOEu+9fN4i/3/AK7nXwRiy3ds2R4mZ0ESW3PGUiOsRL
 Zs2iHvFcAOeTSbi94IVbqR+zdCkhSA9OLJW0wBufSxLDArXTVxYDm03WGUCk97KtHM9+
 fKJHEQm+q99JUh9En6Rzh8oUI1VMN1v6CjlIDDoBAQ3g7p2GUwcgP8RCkIkTaXB+5l+b
 WGYRsFQd4mylVJ1hqZGgmgbpdXHjFbDXTprzVwvbKqvHva9qUhyTBUdM/Nv9e8oSYt3e
 +TVw==
X-Gm-Message-State: AOAM531o71iCN2PkQPuHntqXhJYpeQy7+CUDeXPBRzj0KIYNLsFzx+t6
 0dmz98fCVRvcix9EBoHPIpVZZ/6Tz8g=
X-Google-Smtp-Source: ABdhPJy3W6/jrc3G5U8YKTUlFxbeb05FgfPek35YomTxqAudLCMcyTa7nMswQ2AtCARCkNEh8BvA5w==
X-Received: by 2002:a17:907:968a:: with SMTP id
 hd10mr35129231ejc.269.1641211479652; 
 Mon, 03 Jan 2022 04:04:39 -0800 (PST)
Received: from t470p (host-87-18-201-21.retail.telecomitalia.it.
 [87.18.201.21])
 by smtp.gmail.com with ESMTPSA id o22sm13571400edw.50.2022.01.03.04.04.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 03 Jan 2022 04:04:39 -0800 (PST)
Date: Mon, 3 Jan 2022 13:04:37 +0100
From: Alberto Merciai <alb3rt0.m3rciai@gmail.com>
To: linuxfancy@googlegroups.com, Larry Finger <Larry.Finger@lwfinger.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] staging: rtl8188eu: replace camelcase field CustomerID
Message-ID: <20220103120437.GA222170@t470p>
References: <20220103111131.212261-1-alb3rt0.m3rciai@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220103111131.212261-1-alb3rt0.m3rciai@gmail.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Jan 03, 2022 at 12:11:32PM +0100, Alberto Merciai wrote:
> Replace camelcase field CustomerID to customer_id, compliant
> with linux kernel coding style.
 
Apologize, don't consider it, wrong branch was used.

Regards,
Alberto Merciai
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
