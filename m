Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AD4F5338743
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Mar 2021 09:27:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A40B484536;
	Fri, 12 Mar 2021 08:27:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l7hdbs8B1UhY; Fri, 12 Mar 2021 08:26:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C797084519;
	Fri, 12 Mar 2021 08:26:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 837091BF59B
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 08:26:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 732064150B
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 08:26:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pQYEwv83eG2j for <devel@linuxdriverproject.org>;
 Fri, 12 Mar 2021 08:26:48 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com
 [IPv6:2a00:1450:4864:20::32c])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8D79540025
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 08:26:48 +0000 (UTC)
Received: by mail-wm1-x32c.google.com with SMTP id
 124-20020a1c00820000b029010b871409cfso15240393wma.4
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 00:26:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+QMJTUk4YqaFrTwIRMZ6sWpJbYfvw2gdjapEd5fgWkE=;
 b=EQXW11ajr/8A9SKSRau+PALtq4RUgJ6UpIyHW7tV4pE06EsKqYR+Rx24C3EOQqt5bT
 uz9I/on4eHacCt/hexTjQp6jCRhUeqQ5H0xY6oc6o+wZTH9nTp4ViTTGRgBkrGvAJi20
 Jl5dutOxLtcocpzweBHsrnzwA4ChY4OVwuy9X4/aRR3+xOLhzUdogrLCbGB3ZdeZcTre
 /Zd/2tdd7sPq1m9FcfYi6KBInarz3UJBWPjDdDsqV/iRaqEBnoIKG+09LD+wj2Lpt0Vo
 HfkIi5xzMmtdVuR4lRfkTUozdBXZMFAjnDuj7T1bdveQ39oGGQqOdSO76TNbG+lhyaRZ
 AMzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+QMJTUk4YqaFrTwIRMZ6sWpJbYfvw2gdjapEd5fgWkE=;
 b=hU3NWaqv25ekKqwsEYfozmCKXhZtdKdl4dbA6bkykEUQoQ9M8N9oZ72uzw8wtiJs8U
 a8jb/j9J7hKfqa7St/oAdg+iehXuDs9ZSn1T7hQqlkxw0d1U5cNSHFJ6gpQeLKCmT63A
 cI/gDVVewWvZn5WqMtbz3m036FwqCFwYpGxrRpdpsCbVJBxcGyvpJieKO512BnrhS9/w
 6ghw6s5+gHZpha1viA5ENn6A/p/96Zg3kUJvFiiryo+h20r0qE31mVwkCZO/kF932axw
 gtMJWhkHiiIpx3XZ9nTckGXgouPuTsleOVAyvVTr1KKrEASDvzJP/2b3rXV2pRHrcN6y
 280w==
X-Gm-Message-State: AOAM533JYGN01YbouwFridsZwCKTxK4AYT6DPengnV9OdMnPHPqj0QqL
 UZXdJVaBCVWsuWG36RawZvg=
X-Google-Smtp-Source: ABdhPJx+irCNjsfU49bI+lGN5ZX8cDhFylzPf/oHAfXyx7feM1cSzngahULoFXrVrT+ei+eXAv+Ekg==
X-Received: by 2002:a1c:1f04:: with SMTP id f4mr12123309wmf.12.1615537606336; 
 Fri, 12 Mar 2021 00:26:46 -0800 (PST)
Received: from gimli.cesven (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id i8sm7743979wry.90.2021.03.12.00.26.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Mar 2021 00:26:46 -0800 (PST)
From: Marco Cesati <marcocesati@gmail.com>
X-Google-Original-From: Marco Cesati <marco.cesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCHSET] remove 153 useless typedefs in staging/rtl8723bs
Date: Fri, 12 Mar 2021 09:26:05 +0100
Message-Id: <20210312082638.25512-1-marco.cesati@gmail.com>
X-Mailer: git-send-email 2.30.2
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This set of patches remove 153 useless typedef instructions in the
staging/rtl8723bs source code, as identified by the checkpatch.pl
script. Every patch is purely syntactical: it does not change the
generated machine code. Furthermore, every single patch leaves the
source code fully compilable, so that 'git bisect' will not be affected.

[PATCH 01/33] staging: rtl8723bs: remove typedefs in HalBtcOutSrc.h
[PATCH 02/33] staging: rtl8723bs: remove typedefs in rtw_mlme.h
[PATCH 03/33] staging: rtl8723bs: remove typedefs in odm.h
[PATCH 04/33] staging: rtl8723bs: remove typedefs in odm_CfoTracking.h
[PATCH 05/33] staging: rtl8723bs: remove typedefs in odm_NoiseMonitor.h
[PATCH 06/33] staging: rtl8723bs: remove typedefs in odm_interface.h
[PATCH 07/33] staging: rtl8723bs: remove typedefs in odm_EdcaTurboCheck.h
[PATCH 08/33] staging: rtl8723bs: remove typedefs in odm_HWConfig.h
[PATCH 09/33] staging: rtl8723bs: remove typedefs in odm_types.h
[PATCH 10/33] staging: rtl8723bs: remove typedefs in rtw_eeprom.h
[PATCH 11/33] staging: rtl8723bs: remove typedefs in hal_com.h
[PATCH 12/33] staging: rtl8723bs: remove typedefs in drv_types.h
[PATCH 13/33] staging: rtl8723bs: remove typedefs in rtw_ht.h
[PATCH 14/33] staging: rtl8723bs: remove typedefs in rtw_ioctl_set.h
[PATCH 15/33] staging: rtl8723bs: remove typedefs in wlan_bssdef.h
[PATCH 16/33] staging: rtl8723bs: remove typedefs in rtw_mp.h
[PATCH 17/33] staging: rtl8723bs: remove typedefs in osdep_service.h
[PATCH 18/33] staging: rtl8723bs: remove typedefs in rtw_security.h
[PATCH 19/33] staging: rtl8723bs: remove typedefs in hal_com_h2c.h
[PATCH 20/33] staging: rtl8723bs: remove typedefs in rtl8723b_xmit.h
[PATCH 21/33] staging: rtl8723bs: remove typedefs in HalVerDef.h
[PATCH 22/33] staging: rtl8723bs: remove typedefs in rtl8723b_hal.h
[PATCH 23/33] staging: rtl8723bs: remove typedefs in rtw_mlme_ext.h
[PATCH 24/33] staging: rtl8723bs: remove typedefs in HalPwrSeqCmd.h
[PATCH 25/33] staging: rtl8723bs: remove typedefs in sta_info.h
[PATCH 26/33] staging: rtl8723bs: remove typedefs in ieee80211.h
[PATCH 27/33] staging: rtl8723bs: remove typedefs in basic_types.h
[PATCH 28/33] staging: rtl8723bs: remove typedefs in osdep_service_linux.h
[PATCH 29/33] staging: rtl8723bs: remove typedefs in rtw_efuse.h
[PATCH 30/33] staging: rtl8723bs: remove typedefs in hal_btcoex.h
[PATCH 31/33] staging: rtl8723bs: remove typedefs in odm_DIG.h
[PATCH 32/33] staging: rtl8723bs: remove typedefs in hal_btcoex.c
[PATCH 33/33] staging: rtl8723bs: remove typedefs in odm_DynamicBBPowerSaving.h

Signed-off-by: Marco Cesati <marco.cesati@gmail.com>



_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
