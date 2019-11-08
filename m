Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E58D8F4DFE
	for <lists+driverdev-devel@lfdr.de>; Fri,  8 Nov 2019 15:23:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DDDEE86144;
	Fri,  8 Nov 2019 14:23:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id enxf8y2hQrUY; Fri,  8 Nov 2019 14:23:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 638F7860FC;
	Fri,  8 Nov 2019 14:23:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B158A1BF865
 for <devel@linuxdriverproject.org>; Fri,  8 Nov 2019 14:23:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id AA12187DBB
 for <devel@linuxdriverproject.org>; Fri,  8 Nov 2019 14:23:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3WQXx4+4P4eD for <devel@linuxdriverproject.org>;
 Fri,  8 Nov 2019 14:23:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B6EA387D9C
 for <devel@driverdev.osuosl.org>; Fri,  8 Nov 2019 14:23:32 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id l17so5578152wmh.0
 for <devel@driverdev.osuosl.org>; Fri, 08 Nov 2019 06:23:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=5uQDbB03ZbZYa7okRjk1GbHxDUFyg/HpMEad1zcN0OY=;
 b=VXQdxdR3o1U/YPb4vlujX4lM16afpwzf5VAY/XAs0KeeTNQRdLy5Ld+J6c8jrJ1Ds4
 1HICGy19Z+Wf9aq+q7mIqQj8Kik+sLg7a22PT8uEvaktRqwWjtEdf+cOTB1g2OkafM2f
 L1g6ygXxlMqAF8APzc8JxMeTPU+FEUiSuUsRzlkbTRC5EmNM2rFvfQEpsRlRFBKmTksP
 NzwlBIDUJNox0T8y/gKYP5Ku+9aWZY8OtKCjBul+pFrCRH4k/YaZhpwIeGIdctBYds7q
 OjmZSXqUa1fK2vr08wmuSlgbx31wMC6DXXyJHGuEvdPCnZ5sX9tgbn0MPWSDClSe9c1D
 GWCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=5uQDbB03ZbZYa7okRjk1GbHxDUFyg/HpMEad1zcN0OY=;
 b=XykHd/SJ4GURt5LF/qkIAVsq5N2+7OdTaHVaKcJabRRz2MM+TDUIQ3U1KoyzgShFAj
 eD/zYxf5vmbkPhUD5jnPLBmWSZjdPfqnhTj+A0t2S88NjhxAesl4R1aGpF5qP9FKfE2B
 Lt1+RJb5B1sFkn7Jykw0CYX9342mulxr0ViYTEKyD1jqGLhgQehAkFvTA8OZlaSG9R6X
 pQK6yHnXNXcT3klmtb+hrB6E0XP1WsEV9sL14i/JbLSj5G1O2IhIikQJzTA+IuO4ogsu
 TTf1g5KEC9Owi+Ld+hekiRDRbuka5GJ6tmSdUlPo+mo4kgBoeylqe5g5IYbj1IZscj+1
 4cRg==
X-Gm-Message-State: APjAAAWSu/8rGSPOKEmk+MEkeYwB/IpXqoKjFJTBlGfVNzai8n75fp0Z
 srnDUmnblay3A9oybE50Fys=
X-Google-Smtp-Source: APXvYqxTHp1GM5ny1PYyWMnPJk2yjkyAhXAcFcXJU8A7AZ1IVfy9Tpxeu0Wf5K0+ml9a4Q3MjQvHgg==
X-Received: by 2002:a05:600c:2550:: with SMTP id
 e16mr8105043wma.69.1573223011229; 
 Fri, 08 Nov 2019 06:23:31 -0800 (PST)
Received: from hwsrv-485799.hostwindsdns.com ([2a0d:7c40:3000:11f::2])
 by smtp.gmail.com with ESMTPSA id l4sm8869452wrf.46.2019.11.08.06.23.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Nov 2019 06:23:30 -0800 (PST)
Date: Fri, 8 Nov 2019 14:23:29 +0000
From: Valery Ivanov <ivalery111@gmail.com>
To: gregkh@linuxfoundation.org, willy@infradead.org, wambui.karugax@gmail.com
Subject: [PATCH v2] staging: octeon: fix missing a blank line after declaration
Message-ID: <20191108142329.GA3192@hwsrv-485799.hostwindsdns.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
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

This patch fixes "WARNING: Missing a blank line after declarations"
Issue found by checkpatch.pl

Signed-off-by: Valery Ivanov <ivalery111@gmail.com>
---
Changes in v2:
  - fix huge indentation in commit message
---
 drivers/staging/octeon/octeon-stubs.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/octeon/octeon-stubs.h b/drivers/staging/octeon/octeon-stubs.h
index d53bd801f440..ed9d44ff148b 100644
--- a/drivers/staging/octeon/octeon-stubs.h
+++ b/drivers/staging/octeon/octeon-stubs.h
@@ -1375,6 +1375,7 @@ static inline union cvmx_gmxx_rxx_rx_inbnd cvmx_spi4000_check_speed(
 	int port)
 {
 	union cvmx_gmxx_rxx_rx_inbnd r;
+
 	r.u64 = 0;
 	return r;
 }
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
