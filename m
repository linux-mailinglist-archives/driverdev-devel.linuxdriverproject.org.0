Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 15EEF344735
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Mar 2021 15:32:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EBC4382F76;
	Mon, 22 Mar 2021 14:32:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 51GXURxFRBSx; Mon, 22 Mar 2021 14:32:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 37CDD82ED1;
	Mon, 22 Mar 2021 14:32:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A28FF1BF35E
 for <devel@linuxdriverproject.org>; Mon, 22 Mar 2021 14:32:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8EE574017C
 for <devel@linuxdriverproject.org>; Mon, 22 Mar 2021 14:32:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LCM6D0R3kn4S for <devel@linuxdriverproject.org>;
 Mon, 22 Mar 2021 14:32:05 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com
 [IPv6:2a00:1450:4864:20::52b])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C89CD4022B
 for <devel@driverdev.osuosl.org>; Mon, 22 Mar 2021 14:32:04 +0000 (UTC)
Received: by mail-ed1-x52b.google.com with SMTP id e7so19551792edu.10
 for <devel@driverdev.osuosl.org>; Mon, 22 Mar 2021 07:32:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=W1CrrVQQfCM8oSgODUTN/4xbiArLi1X7MNgfBQ1mnN0=;
 b=O9AZ9jQIbmGFs2zt0vKwAZiZefUlw7T7LkI+mJwbIbe0VQH+y9CLo5zOBVYU7rXLOg
 jNIMqVGWoiHuH01MC+NBcJ798yjq4HDe/ZocOAEq6hbYex8UTpZMcf9bF6ovALp92ZIc
 ECz07ohHkFm6ZtljEX/XfQuBtadxwuF9l2S5/aTTfPKIevx1kvywFVYGbWEegN7C+Ilu
 eJZ/CNWq8V8MmfljfMWCbb2AtAkKNrRD2i0t5RaF7N+obK6HRvDndPIvXtHvmGGH+ol/
 goT60/aOr9ZaK8s0mlXiqwU+vDYyesUTW8vApB0SQ8GVB9IiWr2tA9KB608uwVRBV2PZ
 LeJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=W1CrrVQQfCM8oSgODUTN/4xbiArLi1X7MNgfBQ1mnN0=;
 b=Iv2fx9uo0MuKmCNX3JOe/mnx2GO3LF0FvEikYPHN5PD5TNr9wRABv4D5xu/Eo96fbL
 4Jhwh50LA6GWwNOB4Yds6F0F0izKFcl76Lt/ghhFJQNOwD4oSrRG2jj1kmUV9sXhvxbn
 uGOTDj7lbfPJ7Pwm4nYcgtCa4nxCJMM6IFkq9Qxw5YTfRlwEOspvRp1lYpjJhzYmIwoY
 55IXT7FfZnELp3hX+lZ5NRhylLMwKMJtv6gH0+isAwL6cFYryAa/o+oxeILUuE8EtMvV
 4LvUfGRbvyuPFfTQwDTTbZ7qZkXAl2D78HjwsxSrwacd72un2OU2D0oIGC4jV+s2lbWF
 5t7Q==
X-Gm-Message-State: AOAM532/8GMsOiFO2srY6SSP4lwpD3drgR0ZlMHRaXa5zsHJTfUyy2AL
 FjTOVHiL8fva8kF7K0jhp7w=
X-Google-Smtp-Source: ABdhPJy1CaFLoy2jBvBzDg/xv0rkaByD2eGzXIsDVKKSWGBEzdDhrAkw9n0++Y5uscvGIDcLA1ySKQ==
X-Received: by 2002:aa7:da04:: with SMTP id r4mr26189361eds.343.1616423523117; 
 Mon, 22 Mar 2021 07:32:03 -0700 (PDT)
Received: from agape ([151.57.176.11])
 by smtp.gmail.com with ESMTPSA id de17sm9686534ejc.16.2021.03.22.07.32.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 22 Mar 2021 07:32:02 -0700 (PDT)
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 00/11] staging: rtl8723bs: fix extern declaration checkpatch
 issues
Date: Mon, 22 Mar 2021 15:31:38 +0100
Message-Id: <cover.1616422773.git.fabioaiuto83@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <YFbvwZjwMa4mPsn8@kroah.com>
References: <YFbvwZjwMa4mPsn8@kroah.com>
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
Cc: joe@perches.com, apw@canonical.com, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, Fabio Aiuto <fabioaiuto83@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix extern declaration issues warned by checkpatch

Fabio Aiuto (11):
  staging: rtl8723bs: delete extern declarations in core/rtw_ap.c
  staging: rtl8723bs: moved function prototypes out of core/rtw_efuse.c
  staging: rtl8723bs: moved function prototype out of
    core/rtw_ioctl_set.c and core/rtw_mlme.c
  staging: rtl8723bs: moved function prototypes out of core/rtw_recv.c
  staging: rtl8723bs: remove argument in recv_indicatepkts_pkt_loss_cnt
  staging: rtl8723bs: move function prototype out of core/rtw_recv.c
  staging: rtl8723bs: delete extern declarations in core/rtw_wlan_util.c
  staging: rtl8723bs: move function prototypes out of hal/odm.c
  staging: rtl8723bs: move function prototypes out of os_dep/int_fs.c
  staging: rtl8723bs: remove undefined function prototype in of
    os_dep/sdio_intf.c
  staging: rtl8723bs: remove unnecessary extern in os_dep/sdio_intf.c

 drivers/staging/rtl8723bs/core/rtw_ap.c       |  5 --
 drivers/staging/rtl8723bs/core/rtw_efuse.c    | 10 ---
 .../staging/rtl8723bs/core/rtw_ioctl_set.c    |  1 -
 drivers/staging/rtl8723bs/core/rtw_mlme.c     |  2 -
 drivers/staging/rtl8723bs/core/rtw_recv.c     | 41 ++---------
 .../staging/rtl8723bs/core/rtw_wlan_util.c    |  3 -
 drivers/staging/rtl8723bs/hal/odm.c           | 68 -------------------
 drivers/staging/rtl8723bs/hal/odm.h           | 62 +++++++++++++++++
 .../staging/rtl8723bs/include/osdep_intf.h    |  3 +
 drivers/staging/rtl8723bs/include/rtw_efuse.h |  3 +
 .../staging/rtl8723bs/include/rtw_ioctl_set.h |  2 +
 drivers/staging/rtl8723bs/include/rtw_recv.h  | 53 +++++++++++++++
 drivers/staging/rtl8723bs/os_dep/os_intfs.c   |  3 -
 drivers/staging/rtl8723bs/os_dep/sdio_intf.c  |  3 -
 14 files changed, 129 insertions(+), 130 deletions(-)

-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
