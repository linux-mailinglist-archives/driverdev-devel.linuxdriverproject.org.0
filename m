Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E3AFFD5302
	for <lists+driverdev-devel@lfdr.de>; Sun, 13 Oct 2019 00:19:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3234E20789;
	Sat, 12 Oct 2019 22:19:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XFm9jUM0ow-I; Sat, 12 Oct 2019 22:19:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id BCB3520492;
	Sat, 12 Oct 2019 22:19:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1A1AB1BF40F
 for <devel@linuxdriverproject.org>; Sat, 12 Oct 2019 22:19:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 16EF686D53
 for <devel@linuxdriverproject.org>; Sat, 12 Oct 2019 22:19:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DdOvkpa0t-Fc for <devel@linuxdriverproject.org>;
 Sat, 12 Oct 2019 22:19:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8121D86B67
 for <devel@driverdev.osuosl.org>; Sat, 12 Oct 2019 22:19:34 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id e1so7841558pgj.6
 for <devel@driverdev.osuosl.org>; Sat, 12 Oct 2019 15:19:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=gKNRZ7QA+ZEVI6VxEit6zyGpLvUFrfR83bS8N3vOnGI=;
 b=gipVWh4ZasAHndkuZHKi4c6oaHscFQkoNJSaLtErA9RtWN1/W1yK/34E+zx9c//o/x
 GoD4zWWBnXBz0qYqCs197z+EehDSjMnLXkvmntzSWWgHqdoAsWenAlr0QDfUxSruXkj4
 rwhfeoEzJBfv6u2Gzi8+GqL7AjMSg2+MR2Nx4lccKc1qfUM+5qN0vqfz1dLW5bUib5UR
 TeFvfifcTzO7dwLGvZhts2z03PaYwtCAonqH0H3kp9Qc6iNNa649lyNJOszRZXSICc3p
 1nAsOJf2ewPZb+UwSA2JKsd9Qc4OpCMGaNojnNP2Pck1ALgEbZyAJD+AFtUZlQ1zoR8d
 rlsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=gKNRZ7QA+ZEVI6VxEit6zyGpLvUFrfR83bS8N3vOnGI=;
 b=ES1v/Rh6/G1z05V0sKYk7wIDSuPlbxwiVWvH9ahUgiyANjreJZkU0ckBtVUlFegtGR
 /VLdWZki6ugNhiUP350cDA8aZO14PSHAphHSymL0UR0nlgIF2Fx1eqKP7l5xhhTkaJn7
 rUdp3nIkCzrKHKEb7rBnljCPdQC6QEpN59Gm2MUd7bO33Q1Mvlq5mTTDGvczFylWchDh
 iRb3Xasw8dlzBtJoauLDkKKyGvbGogzCRyxVfgiq00GkpbQQTzsILQRrgRReKB0zxJZX
 ixU1gEdtQzMSyb8/FxjcD1pjHHQi5VhC6Rd5i9Z/kCJrWckNZV4JrWRIjJTYc6z9UXJZ
 5KLw==
X-Gm-Message-State: APjAAAUlVwR+EY/pWNxWj0PFiH60D6vs0mJ4BEo5YDJCuHcQkqcNLgNB
 bHOF3jzPuBE6pZ+a7VV1Tyhk6Vx4BfGSVQ==
X-Google-Smtp-Source: APXvYqxBSWxIWxd4Li/ZV/2NOdZd1c0t8nNdYjd85ZRSGSdHLpeC6BHHzrtUlPECMJvjOcPZxg/1Gw==
X-Received: by 2002:aa7:908b:: with SMTP id i11mr24895893pfa.140.1570918774118; 
 Sat, 12 Oct 2019 15:19:34 -0700 (PDT)
Received: from wambui.zuku.co.ke ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id 30sm13839562pjk.25.2019.10.12.15.19.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 12 Oct 2019 15:19:33 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/2] Formatting and style cleanup in rtl8712
Date: Sun, 13 Oct 2019 01:19:14 +0300
Message-Id: <cover.1570918228.git.wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.23.0
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 florian.c.schilhabel@googlemail.com, linux-kernel@vger.kernel.org,
 Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch series addresses the use of unnecessary return variables and
line-breaks in function headers, both in
drivers/staging/rtl8712/rtl871x_mp_ioctl.c. 

Wambui Karuga (2):
  staging: rtl8712: remove unnecessary return variables
  staging: rtl8712: clean up function headers

 drivers/staging/rtl8712/rtl871x_mp_ioctl.c | 103 ++++++++-------------
 1 file changed, 38 insertions(+), 65 deletions(-)

-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
