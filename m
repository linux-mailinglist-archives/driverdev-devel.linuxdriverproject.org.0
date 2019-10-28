Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 16D89E7C9A
	for <lists+driverdev-devel@lfdr.de>; Tue, 29 Oct 2019 00:01:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DA4FA86397;
	Mon, 28 Oct 2019 23:01:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vHFMjlMVdw+w; Mon, 28 Oct 2019 23:01:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 80775862C7;
	Mon, 28 Oct 2019 23:01:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 786AA1BF2C7
 for <devel@linuxdriverproject.org>; Mon, 28 Oct 2019 23:01:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6E35D862C7
 for <devel@linuxdriverproject.org>; Mon, 28 Oct 2019 23:01:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8SmjEBv-y0sL for <devel@linuxdriverproject.org>;
 Mon, 28 Oct 2019 23:01:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com
 [209.85.208.182])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 96E2086186
 for <devel@driverdev.osuosl.org>; Mon, 28 Oct 2019 23:01:48 +0000 (UTC)
Received: by mail-lj1-f182.google.com with SMTP id y3so13167090ljj.6
 for <devel@driverdev.osuosl.org>; Mon, 28 Oct 2019 16:01:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=w88OVi9NUPe9HTwZlFh7dOWR8PhFSLUteBg6+LFvBn4=;
 b=Nlvc5i3yRy8+Wz1QPDQSV39J/dyh8GJGgtw13M+BldSQLYhFdElnRdGkz7WGYGiUaN
 9Aoh9Y6o2Q90vzhHro5qYrAkVx0Wz53gwsmtwiLeWwfqLaHJOaytCW55VkDpTkPMTmiT
 lGyc7An42NWGL2PIdnK4r4/qhejIqGj639YMlFwR0HYdWgKSdvTCPdcvI729Snqlm6sG
 lgij77Y+gaBRnxrzEK9hvZmuYB4GCA3samabvaqEG/Z/Z4E53Hbfc7MlmbOeNh5BSDNQ
 zusZ/mpgX7n6DngJgJl6MHF0bWU4GG4Uznp6hCgmueFjfBMh3FzKQc59Wxsy23IMLB9a
 gDcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=w88OVi9NUPe9HTwZlFh7dOWR8PhFSLUteBg6+LFvBn4=;
 b=nocTTctTa0W+wMnQqsmonaPpzGv4E9dIdYWs6ee7N3ziy29WLx0dt8foO/nDf54dUI
 RSg05TgQ/WWMHFKb6HVlGNcpBSHY/CgGGjfDPFYjRsiVxI0SfpBd6rBvYbJNrddCoGNx
 KOmjeNPr14IcD2rLPbupbBJIN30RAoX4oYgD9yTEKyu02D62/NxM1NIXEIpXbRL2hLIh
 SoS1icSmSqESDFd6T6DKwBcsQIQeNRoedcHbhvDKsWcBqTQHUHdDXsh7GLLGh2tgKVdT
 yIM3bDi8g8TajSgNYBny8EjWq1YpULHkQ9d9niMmxpT7GIRQK+t1dElYiyBcZ5X4CAeg
 3gVg==
X-Gm-Message-State: APjAAAVcOzhqsso3ZbTBrFJ9u/gxjFzaixx9vJznFVaFkCLEJcLdsBpc
 c51z1qcwmlUpZdrDp39U5Sw=
X-Google-Smtp-Source: APXvYqyH0OEdAHS1RNlEhIKr3mypNxf6Jx870MTcfbi95abRheA/Cmp0W2GjDQU/86WeOx6VlTVBuw==
X-Received: by 2002:a05:651c:28a:: with SMTP id
 b10mr152809ljo.193.1572303706849; 
 Mon, 28 Oct 2019 16:01:46 -0700 (PDT)
Received: from localhost.localdomain ([93.152.168.243])
 by smtp.gmail.com with ESMTPSA id v9sm5676566ljk.56.2019.10.28.16.01.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Oct 2019 16:01:46 -0700 (PDT)
From: Samuil Ivanov <samuil.ivanovbg@gmail.com>
To: rspringer@google.com, toddpoynor@google.com, benchan@chromium.org,
 gregkh@linuxfoundation.org
Subject: [PATCH 0/2] Staging: gasket: Implement apex_get_status() to check
 driver status
Date: Tue, 29 Oct 2019 00:59:24 +0200
Message-Id: <20191028225926.8951-1-samuil.ivanovbg@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From the TODO list:
- apex_get_status() should actually check status.

First patch implements the check.
Second removes the TODO comment in the function.
*** BLURB HERE ***

Samuil Ivanov (2):
  Staging: gasket: implement apex_get_status() to check driver status
  Staging: gasket: Clean apex_get_status function of comment

 drivers/staging/gasket/apex_driver.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
