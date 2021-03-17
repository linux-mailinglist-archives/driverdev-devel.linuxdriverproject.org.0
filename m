Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A3F3633EDD6
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Mar 2021 10:59:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C4B806F837;
	Wed, 17 Mar 2021 09:59:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d7W98-hN--RS; Wed, 17 Mar 2021 09:59:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2AA296F732;
	Wed, 17 Mar 2021 09:59:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C0AB51BF20B
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 09:59:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BD17583C38
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 09:59:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FXR-aqcX8nBb for <devel@linuxdriverproject.org>;
 Wed, 17 Mar 2021 09:59:36 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com
 [IPv6:2a00:1450:4864:20::32e])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2A73283870
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 09:59:36 +0000 (UTC)
Received: by mail-wm1-x32e.google.com with SMTP id g8so1092006wmd.4
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 02:59:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=x4zh4SNUmcfd2PXUC3KyCVi6qa14IVpwvMxxZz19GaU=;
 b=RAU5np/eftqddHmvUd91pRF2x7OmGchGIUni9qiz3ZnusMkPHtr0CvDP1FwU9RApkL
 KsroEVk6BBPu/UswmQ5Nqw6VhEPU63JprUGSeJIHJQXujyz7WUB4V/Sou0HTpaaMWlGD
 AGeTO+UxUZipbqqBIY9K8pjJRoBeL11QTo6pzcJ7QgHH3pUXdvQuUxPuwgSBzMrBTclH
 Ba9NblP63vMUpRlmFZA6qp1fXSdaNlsdDGkEuu99DbZZpKTtD8ueUjf16kJIdxJXTtuQ
 aKqL4g98M0rmQ7G3y2uMsfYJrd4vMRsiVpwa6vqxUZ93c2WFU6fVZQzvQ6i3LfGxBaFx
 5rsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=x4zh4SNUmcfd2PXUC3KyCVi6qa14IVpwvMxxZz19GaU=;
 b=QyHeigubSE/OOZ4qcSYg7Qi8RjWv6DGUIskkVz78ssHzE1DoE4984K8QFMwxfyDQV5
 QiUxwAVyD/38ThqjnjJprLxvGdUU1Dj/UkCVVgvS0c9XrDALUIBnJRMofcVS37059CVn
 dnNN9h5aS/pHTwEvfesJizSFJsIQL01eF3pkvPebtqHvGiNlNMIOg/vqoMjPacZAdnQx
 F3G5Uf/hSles+btbRNQbtwnyXzJAS8zwJrhgWS3/Ljld2Y2GJYI4QKhqDefmKqWvAQUr
 wnRIF2rbFwirUJKOF/S5vHCW8ddJuDdkZyLzvHXqUksY5UKvGVLV9pPbZrGv+DDbPM9Q
 jS8w==
X-Gm-Message-State: AOAM5320CzICZPN99qG6Pd8wefCPbjfPbE5qL2KlT4eJhlG7eKvSGWX2
 cVEqo7xifufVIK4wcoLyy/w=
X-Google-Smtp-Source: ABdhPJzCQwaBGCPMvrYnw1j6e8gM0U97jtKMOwk/M4YQMboeaJWQoljMeroxG5VLAON/dIK83WIoJQ==
X-Received: by 2002:a1c:a74b:: with SMTP id q72mr2837753wme.158.1615975174384; 
 Wed, 17 Mar 2021 02:59:34 -0700 (PDT)
Received: from agape.jhs ([5.171.81.191])
 by smtp.gmail.com with ESMTPSA id u4sm26518413wrm.24.2021.03.17.02.59.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Mar 2021 02:59:34 -0700 (PDT)
Date: Wed, 17 Mar 2021 10:59:32 +0100
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: gregkh@linuxfoundation.org
Subject: staging: rtl8723bs: remove unused code blocks completed?
Message-ID: <20210317095932.GA2308@agape.jhs>
MIME-Version: 1.0
Content-Disposition: inline
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

Hi,

I'm trying to search other unused code blocks:

grep -r '^\(#ifdef \|#if defined(\|#ifndef \)CONFIG_' drivers/staging/rtl8723bs/

drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c:#if defined(CONFIG_PM)
drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c:#if defined(CONFIG_PM)
drivers/staging/rtl8723bs/os_dep/ioctl_linux.c:#if defined(CONFIG_WEXT_PRIV)
drivers/staging/rtl8723bs/include/drv_conf.h:#ifndef CONFIG_RTW_HIQ_FILTER
drivers/staging/rtl8723bs/include/autoconf.h:#ifndef CONFIG_WIRELESS_EXT

all blocks left are checked by existing defines.
Could we apply this?

thank you,

fabio

diff --git a/drivers/staging/rtl8723bs/TODO b/drivers/staging/rtl8723bs/TODO
index 45065fd3fd5d..afa620ceb2d8 100644
--- a/drivers/staging/rtl8723bs/TODO
+++ b/drivers/staging/rtl8723bs/TODO
@@ -1,5 +1,4 @@
 TODO:
-- find and remove code blocks guarded by never set CONFIG_FOO defines
 - find and remove remaining code valid only for 5 GHz. Most of the obvious
   ones have been removed, but things like channel > 14 still exist.
 - find and remove any code for other chips that is left over
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
