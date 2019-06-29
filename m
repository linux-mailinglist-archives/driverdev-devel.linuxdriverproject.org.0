Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B09BB5AA16
	for <lists+driverdev-devel@lfdr.de>; Sat, 29 Jun 2019 12:22:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4621387646;
	Sat, 29 Jun 2019 10:22:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id T3JjeLDmQ4im; Sat, 29 Jun 2019 10:21:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C34CE8769E;
	Sat, 29 Jun 2019 10:21:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F3EC11BF405
 for <devel@linuxdriverproject.org>; Sat, 29 Jun 2019 10:21:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id F0FEE8816A
 for <devel@linuxdriverproject.org>; Sat, 29 Jun 2019 10:21:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YEhfn0WqEbs7 for <devel@linuxdriverproject.org>;
 Sat, 29 Jun 2019 10:21:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9880A8815F
 for <devel@driverdev.osuosl.org>; Sat, 29 Jun 2019 10:21:56 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id 19so4215919pfa.4
 for <devel@driverdev.osuosl.org>; Sat, 29 Jun 2019 03:21:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=6jXcyQz5oa080ljH3lxwjJW0irqf5iKTZLTX/DBR0+E=;
 b=gYW33GDAqkR+vAX51JYX0WJRg2g90O0GCNR796AKAyuwZwyqEknNkrHofqojPQgC3v
 9+HBX+fe0rsmEl9m2ZcoONZrtp9V9wIbIpKBXnVT8M/kB/etHergY6GCdZDYQnPnO/Kq
 xDOzr/GngzypwOCdonpklP5TwfsEYM5PC88aLcBlwa7IY8Xl7txf1UX155zSXMx17ClY
 TVA5+WSbxbhwn0FsZoS4PuV2SgnYVfMtIszC3xUFLgyytU4U6a56IRA/uzJUjpYilXpn
 hdZ5iwnXPUrQorOtcFXKcPNZleCoaEMXcgRxIGbDbDvjGbOWWv5tuA4ANllXE+7PwfD3
 hWVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=6jXcyQz5oa080ljH3lxwjJW0irqf5iKTZLTX/DBR0+E=;
 b=mmrS+inkZxV2hL2ZiHnuxXvrBP9pywXm+7D6XPwQUmsVqaRql5EtyKM2jhGVs3bSxc
 dSMnCXMEYj7xY6eh4QLXCrO5Gzcy9rgTF9QVgiSqUKc2xgyNJQ0WTA8tMFkF7evdaAId
 z9pSwd1aUpXe9lm4AWnV50SDUgmYBmcif49qPn/lf8FAVmPi1+PFTY2XpPU+w/tVFsFg
 O9h5rNzgxKZgydKl8Gy/0CHVxPdcNKSF4AgwIM+qTAfBx93RS+sYCsXIbCVfukNRqPty
 yS05P4ndVDkq0j0sq2msNUoxEL2M6x7pew25No6FRTESapyAM9NCSD3L39IphDOyzH9O
 NftQ==
X-Gm-Message-State: APjAAAWS7KhJkPKoAm0ISb4p9F0c+fJOSnUNBZLYpVdtu6rmHdD2UF8g
 3wHMUJmvT3Z6wwDnItuELCc=
X-Google-Smtp-Source: APXvYqynepLHYgkegudtj1Py1uSpr5ZQod36GZy1XyJZZ2I9kjwtvbDn937KkZq+Iv1unQYqnMnR5g==
X-Received: by 2002:a17:90a:26a1:: with SMTP id
 m30mr18988874pje.59.1561803716298; 
 Sat, 29 Jun 2019 03:21:56 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.92.187])
 by smtp.gmail.com with ESMTPSA id n98sm5103405pjc.26.2019.06.29.03.21.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 29 Jun 2019 03:21:55 -0700 (PDT)
Date: Sat, 29 Jun 2019 15:51:52 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Nishka Dasgupta <nishkadg.linux@gmail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH 03/10] staging/rtl8723bs/hal: fix comparison to true/false is
 error prone
Message-ID: <20190629102152.GA15011@hari-Inspiron-1545>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
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

fix below issues reported by checkpatch

CHECK: Using comparison to false is error prone
CHECK: Using comparison to true is error prone

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/rtl8723bs/hal/sdio_halinit.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/hal/sdio_halinit.c b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
index 4d06ab7..39d7ba4 100644
--- a/drivers/staging/rtl8723bs/hal/sdio_halinit.c
+++ b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
@@ -724,7 +724,7 @@ static u32 rtl8723bs_hal_init(struct adapter *padapter)
 	pregistrypriv = &padapter->registrypriv;
 
 	if (
-		adapter_to_pwrctl(padapter)->bips_processing == true &&
+		adapter_to_pwrctl(padapter)->bips_processing &&
 		adapter_to_pwrctl(padapter)->pre_ips_type == 0
 	) {
 		unsigned long start_time;
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
