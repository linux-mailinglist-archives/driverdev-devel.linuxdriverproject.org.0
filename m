Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 95C6933D792
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Mar 2021 16:33:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 333C54EDB5;
	Tue, 16 Mar 2021 15:33:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b9PhIVZyGd4A; Tue, 16 Mar 2021 15:33:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id AFCBE4EC5A;
	Tue, 16 Mar 2021 15:33:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CA51B1BF301
 for <devel@linuxdriverproject.org>; Tue, 16 Mar 2021 15:33:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BA1924319A
 for <devel@linuxdriverproject.org>; Tue, 16 Mar 2021 15:33:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r_saS4IDmogh for <devel@linuxdriverproject.org>;
 Tue, 16 Mar 2021 15:33:23 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com
 [IPv6:2a00:1450:4864:20::436])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2D41643003
 for <devel@driverdev.osuosl.org>; Tue, 16 Mar 2021 15:33:23 +0000 (UTC)
Received: by mail-wr1-x436.google.com with SMTP id e9so7661058wrw.10
 for <devel@driverdev.osuosl.org>; Tue, 16 Mar 2021 08:33:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=TdM1lN7kRe1YT/ljmmWFHK6v3XjvwZu7i3f7+t7L+TI=;
 b=jvEz2SC5IgW+7dXloe8HF3hJjVRlr4FhIJGug6VFYLiH5wubW1DMNVFp4IVgIEvxhk
 IUYUF7NdpJPo3lB3SRoTJPCUxAQxe6haQFfXjd3SdExlxN5XKC21wKDmfWSvsEFabwXi
 QEpjwqwpafoXTgq9Ese82uY2r9wwtAe25Ec0krp3YHNYDwT8AoEeFznB3WsfAgCE2KCX
 qtCK4o/vdvlF3Xl/T4Pb8tOa8g3GPkNyBqvygDFrHQLzQ9cb4GSFDrFxyjCY1bdazglZ
 r3u3D1PUq1i5hysB/V3NxrIMjwGq+MfVW28fLl1cc8iNzIE5K8yq4lAtLxtB/Uz4h5Vr
 EUMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=TdM1lN7kRe1YT/ljmmWFHK6v3XjvwZu7i3f7+t7L+TI=;
 b=SxGqelUVZfOu4xiGOdNww8QA6TjsUUXwty3BO/DS+aid4wTIT8JOsHVXfsOnbI0by1
 EHeG6c2tmbKr8mnm93b/mZGTvCpSbjbA5n/o4CsUFzckwSoN9FuULKXlmC5pAttX4gss
 Lf0ZCnrg++dPs5EmjTL+crC8e6KLOUf7q3LM6xBCSF73eAuzNeiDr+IjfBKf/35Vaf3I
 fkdjAARmiLrYYa7c+hPy1u4LKn5+4r/yOMqhsHctT53GCtiFl+L7Bsbb873V2nFYDmVn
 7xFj7QLLKJROOKxX152QrzmF3RgK60WqOVkicKNjonpOwxGnUayH6NKKerj3twdIT/Qr
 PJdA==
X-Gm-Message-State: AOAM5306rJf8bAc5/AiZPquQFFc6FE+mBGRjn70uQ/nSIe3JtZXSscEY
 UmeabXDogw3DSdoz/jBarjA=
X-Google-Smtp-Source: ABdhPJyD62lAnwAa8rPeMIeLt/v/zeiYBe3Zy77KfY2GSUks+w0X548FMlxJQCIy0tfg0TiwygBfhw==
X-Received: by 2002:adf:e68e:: with SMTP id r14mr5480551wrm.273.1615908801530; 
 Tue, 16 Mar 2021 08:33:21 -0700 (PDT)
Received: from agape.jhs ([5.171.72.71])
 by smtp.gmail.com with ESMTPSA id c16sm27488851wrs.81.2021.03.16.08.33.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Mar 2021 08:33:21 -0700 (PDT)
Date: Tue, 16 Mar 2021 16:33:18 +0100
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 12/12] staging: rtl8723bs: remove unused code blocks
 conditioned by never set CONFIG_MULTI_VIR_IFACES
Message-ID: <dfc3cf4234dbe166a75068a8405b43be0070d375.1615907632.git.fabioaiuto83@gmail.com>
References: <cover.1615907632.git.fabioaiuto83@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1615907632.git.fabioaiuto83@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

remove conditional code blocks checked by unused
CONFIG_MULTI_VIR_IFACES

cleaning required in TODO file:

find and remove code blocks guarded by never set CONFIG_FOO defines

Signed-off-by: Fabio Aiuto <fabioaiuto83@gmail.com>
---
 drivers/staging/rtl8723bs/include/drv_types.h | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/drv_types.h b/drivers/staging/rtl8723bs/include/drv_types.h
index 9c0e7b6946f8..30bf7fc0994d 100644
--- a/drivers/staging/rtl8723bs/include/drv_types.h
+++ b/drivers/staging/rtl8723bs/include/drv_types.h
@@ -196,9 +196,6 @@ struct registry_priv {
 	u8 RFE_Type;
 	u8  check_fw_ps;
 
-#ifdef CONFIG_MULTI_VIR_IFACES
-	u8 ext_iface_num;/* primary/secondary iface is excluded */
-#endif
 	u8 qos_opt_enable;
 
 	u8 hiq_filter;
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
