Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 179A622556
	for <lists+driverdev-devel@lfdr.de>; Sun, 19 May 2019 00:15:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 137DD85F7C;
	Sat, 18 May 2019 22:15:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1R9NO_nQU6Sz; Sat, 18 May 2019 22:15:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5376F85CA3;
	Sat, 18 May 2019 22:15:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 78EC81BF2B0
 for <devel@linuxdriverproject.org>; Sat, 18 May 2019 22:15:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 75F26878D1
 for <devel@linuxdriverproject.org>; Sat, 18 May 2019 22:15:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 68niIfl3jGrO for <devel@linuxdriverproject.org>;
 Sat, 18 May 2019 22:15:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f193.google.com (mail-qk1-f193.google.com
 [209.85.222.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1D6AE878CE
 for <devel@driverdev.osuosl.org>; Sat, 18 May 2019 22:15:45 +0000 (UTC)
Received: by mail-qk1-f193.google.com with SMTP id c14so6671689qke.3
 for <devel@driverdev.osuosl.org>; Sat, 18 May 2019 15:15:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VQnfKzjzaG+uZvRSHThCQoJsbxO/n61UBy9RgELTA98=;
 b=PAKVISkzwJ5T2He6DaDVTk62VAoDDmjsq4gRScVC9c6xB8c8oHFN6MMy/NS5xEIAsj
 2jtvRf/Zb2gsuZeXkmSWcko7r9zcgVJV8xA/gtafRw/a2d1zjpxQiZPAKGm01YbMa5hw
 7b+eEM67Z56GaIDemU1f1CZQO3+zcKAuj0Xy4CjI6POUNA0AcYV0jDeC3SL79o8QM2f2
 /CqPSp+0O8nK4xZscwD58mIvR8EPTG8J9WzW6ho27Da0UbEDX8oAy94zetH38s5g/QA3
 V4LYcOW7D0NP2gXniOPq9uDqcZZnMS2XgIfjsd2xDWnPK8kctViDPhmQ/q3zGeAc740W
 +C2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VQnfKzjzaG+uZvRSHThCQoJsbxO/n61UBy9RgELTA98=;
 b=hs9mT4oy1ruhpGQ1bFMKoXB4LXq0b6D/7q4cmOhrAttnHpJejvtwqIw01F15Nilx6T
 Tszq1s3qg4Auh4JZI1IjBAiYxSCV2b49bCUzuxvROvQHdcgCnGpKhwJCpXALXkJPeoeD
 isxKXFgsgwRmZxCriJH142OAOmrjwDMBtNhps4641/28CS30Pl2dRNnzujhse9RVCODJ
 xl5q1dbKJ5CpEPeGVQERpHy7U2wuBAIN07edBhr83sWXNMFYgYiKXdXz1Ia0tuOpaILg
 P4fCPsr0DMXQfFqVOAFpCMoZUfXNc+OnvSOt/6/DXV6nOYMErjwnrCGviJtYMpdFlJep
 /YVQ==
X-Gm-Message-State: APjAAAVoKU9jKyEEBc2Yljm02Rbzklb3wFN5pn5x7Qo3/JsAnDGgl3+I
 ptnmqHPKTTAVr1CvWA/KlQQ=
X-Google-Smtp-Source: APXvYqxBkVhxgY/rgfa5p5eccTrAjRGD6+Szn4GI1H6Du8hcgi6IUavWG+vwlEajhjPzGxS5NJVM0Q==
X-Received: by 2002:ae9:f70d:: with SMTP id s13mr52473452qkg.213.1558217744110; 
 Sat, 18 May 2019 15:15:44 -0700 (PDT)
Received: from tallys-pc.ime.usp.br ([143.107.45.1])
 by smtp.gmail.com with ESMTPSA id s17sm7702970qke.60.2019.05.18.15.15.39
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 18 May 2019 15:15:43 -0700 (PDT)
From: Tallys Martins <tallysmartins@gmail.com>
To: Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Stefan Popa <stefan.popa@analog.com>, Jonathan Cameron <jic23@kernel.org>,
 Hartmut Knaack <knaack.h@gmx.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 1/2] staging: iio: ad2s1210: Destroy mutex at remove
Date: Sat, 18 May 2019 19:15:57 -0300
Message-Id: <20190518221558.21799-1-tallysmartins@gmail.com>
X-Mailer: git-send-email 2.21.0
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
Cc: devel@driverdev.osuosl.org, Tallys Martins <tallysmartins@gmail.com>,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.or,
 Souza Guilherme <gdsdsilva@inf.ufpel.edu.br>, kernel-usp@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Ensure the mutex will be destroyed on drive removal.
Also adds mutex comment description.

Signed-off-by: Tallys Martins <tallysmartins@gmail.com>
Signed-off-by: Souza Guilherme <gdsdsilva@inf.ufpel.edu.br>
Co-developed-by: Souza Guilherme <gdsdsilva@inf.ufpel.edu.br>
---
 drivers/staging/iio/resolver/ad2s1210.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/iio/resolver/ad2s1210.c b/drivers/staging/iio/resolver/ad2s1210.c
index b6be0bc202f5..b91cf57c5e57 100644
--- a/drivers/staging/iio/resolver/ad2s1210.c
+++ b/drivers/staging/iio/resolver/ad2s1210.c
@@ -86,7 +86,7 @@ static const struct ad2s1210_gpio gpios[] = {
 static const unsigned int ad2s1210_resolution_value[] = { 10, 12, 14, 16 };
 
 struct ad2s1210_state {
-	struct mutex lock;
+	struct mutex lock; /* lock to protect the state on r/w operations */
 	struct spi_device *sdev;
 	struct gpio_desc *gpios[5];
 	unsigned int fclkin;
@@ -689,8 +689,10 @@ static int ad2s1210_probe(struct spi_device *spi)
 static int ad2s1210_remove(struct spi_device *spi)
 {
 	struct iio_dev *indio_dev = spi_get_drvdata(spi);
+	struct ad2s1210_state *ad2s1210_ad = iio_priv(indio_dev);
 
 	iio_device_unregister(indio_dev);
+	mutex_destroy(&ad2s1210_ad->lock);
 
 	return 0;
 }
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
