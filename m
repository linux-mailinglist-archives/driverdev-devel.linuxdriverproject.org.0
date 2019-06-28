Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CFFB85A246
	for <lists+driverdev-devel@lfdr.de>; Fri, 28 Jun 2019 19:27:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E7CFC8679E;
	Fri, 28 Jun 2019 17:27:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9BSZXlXStBWG; Fri, 28 Jun 2019 17:27:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B8FE486781;
	Fri, 28 Jun 2019 17:27:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EB62C1BF844
 for <devel@linuxdriverproject.org>; Fri, 28 Jun 2019 17:27:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E829D86781
 for <devel@linuxdriverproject.org>; Fri, 28 Jun 2019 17:27:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OLgRbIQgCMnR for <devel@linuxdriverproject.org>;
 Fri, 28 Jun 2019 17:27:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8E2C48671C
 for <devel@driverdev.osuosl.org>; Fri, 28 Jun 2019 17:27:48 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id m4so2890799pgk.0
 for <devel@driverdev.osuosl.org>; Fri, 28 Jun 2019 10:27:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id;
 bh=F7Wjuu+YAC+TMsgPBs7sDbNdhkAudNoqym9xPIOSlIw=;
 b=Bz5v4uKwgvlAz5rXyYLV6lB7tF1/0vIK2w12fJTasrYDDuS4M0IdP2rf5RDJFHj/4j
 7n/o2QuI+0N/fDNjAx5i48FLuTyxaxCNFvxlshBmd/UJUkSZ9YItDTv6EMvZB5N4EOgd
 pGdyICU2n3MifgdbkQd6ZNku9JRBmPN2JcKGIIEK0gUpP/7MQit5GdJirc2PDpb76Pc9
 Eh8Aa+/1NOiUSjiK2KQBv2lUMQ9TzRg5EKbp4JYmDsuR+LLXSYiM2Zd2CxBPKk/ZyWb7
 4Jxy9moHGPLhzBXZg5Fi5aIn53oFRRFNQacd65S/JCQM9YOcZUH/HtHI4mWswID4VMnl
 ywVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=F7Wjuu+YAC+TMsgPBs7sDbNdhkAudNoqym9xPIOSlIw=;
 b=oLMqcoOQrGplLkxeftdGzWEZWP1X0yc3Nko4OJ4OITswjd0lQd5PV+62eFqpJckSHu
 N2t9I0MQlP9xIPjNRc+RyxwvatSxYJNn3E1rCZ3w92Z3BEfXX35tT+RxJ9QZgGsmONip
 mTTjGiADo8in+MxBp/rM3X835y50lQRpB6IvfkN9LrmnZHmAYht/1FtC1xFBO9pdxX4Q
 ls6r5vYGspnC6lMrbePlV8TbLxS176zN01Igg5jhOhvnOHKGlQ4+/WUikxF9q2W3AC91
 JaARtlPJe7ICe9Bl2U/MSV4lqEACt7zQt0NuS+dFaOa5E5a7azxiZdGYn51tYW9neMfx
 Vmgg==
X-Gm-Message-State: APjAAAW7At60dFy7K8HW5BXJbE+dX0WVtvjP4CcIeDosVPAs2Nu7xk/d
 +g3UzgGSGpVMgKJEk9bHPMU=
X-Google-Smtp-Source: APXvYqzAEP32NwaQdCQEcfyK+5IQX8lrXugQxv3e/LojcusSE5b0Ym/UhhiXvCakHYY6O9BIczTwQg==
X-Received: by 2002:a17:90a:730b:: with SMTP id
 m11mr14392945pjk.89.1561742868182; 
 Fri, 28 Jun 2019 10:27:48 -0700 (PDT)
Received: from localhost.localdomain ([183.83.73.90])
 by smtp.gmail.com with ESMTPSA id k19sm2070490pgl.42.2019.06.28.10.27.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 28 Jun 2019 10:27:47 -0700 (PDT)
From: Harsh Jain <harshjain32@gmail.com>
To: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, harshjain32@gmail.com,
 harshjain.prof@gmail.com
Subject: [PATCH 0/2] staging:kpc2000:Fix integer as null pointer warning
Date: Fri, 28 Jun 2019 22:57:22 +0530
Message-Id: <20190628172724.2689-1-harshjain32@gmail.com>
X-Mailer: git-send-email 2.17.1
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

It fixes sparse warning in kpc2000 driver.

Harsh Jain (2):
  staging:kpc2000:Fix symbol not declared warning
  staging:kpc2000:Fix integer as null pointer warning

 drivers/staging/kpc2000/kpc_i2c/i2c_driver.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
