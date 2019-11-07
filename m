Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EA42F30F3
	for <lists+driverdev-devel@lfdr.de>; Thu,  7 Nov 2019 15:13:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9216787765;
	Thu,  7 Nov 2019 14:13:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4GU5WrKVEStH; Thu,  7 Nov 2019 14:13:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C7AAF87627;
	Thu,  7 Nov 2019 14:13:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 24D691BF3D2
 for <devel@linuxdriverproject.org>; Thu,  7 Nov 2019 14:13:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1D27E85886
 for <devel@linuxdriverproject.org>; Thu,  7 Nov 2019 14:13:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id d6EWR5E6fMM0 for <devel@linuxdriverproject.org>;
 Thu,  7 Nov 2019 14:13:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 31B758583F
 for <devel@driverdev.osuosl.org>; Thu,  7 Nov 2019 14:13:53 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id x4so2652711wmi.3
 for <devel@driverdev.osuosl.org>; Thu, 07 Nov 2019 06:13:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=727/3hXNrCpMzc8Pu8pq1fTYwENsqPgwGKKHUIkJ+iQ=;
 b=mqZSnsIbvbCPOezMyABP9kgRU/q8s09FqoL+8rtW1HFh/g10TeHhxA3n0jGhJtQKNF
 4paJCGdNtrAXBwgxE9NcJMDDBpwA0F9Id33qIiNyP9KjnIrJS5bhuErPyPM7M4ypeB4C
 uYV6wtRBYDpk62xEyorrnKCmoryyUzWIK45XRMDeqItXcC/Wo+tfYytK3lPJPIFU3PLZ
 kXxJum2HliNF/fn/07JJyHbJJ/EmRxr2qaqFVcpy6vTBSxWwa3flDwggY9ntSym1pYhZ
 pjdkwB09T1Cu6v8H225hdP6Vf+wgl8j4uADWp4L48fIu+30FDF/z/lFZg2zU5Y+5xGe4
 vcbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=727/3hXNrCpMzc8Pu8pq1fTYwENsqPgwGKKHUIkJ+iQ=;
 b=B0j101wXuAcUxxTkFCjmRRhQZAetgQfAYuVGVsRfX2Pc8SU2ya6ywux18RzEM+yJGd
 /IzXtTxR71Dr8yZfrMkigEdwpQgOSDEUu/6T9zOqzD72UYdab+if8tKrAeKIZxXfxCUQ
 nzpOtdILIv1vN23hZkQ1yJD/VcQmiGchbXOCmN4BbWOcBeGvMFy45asU+Fn1DhLmoL/v
 1W0KNKqf8S94THuN9uk0KpXIUKWvwl3rK7/yhojMd4mCfJOXNKyBgRrmiFZHa19p+O77
 IC7ClFnhFtVf4M0hJBbhXEuIvXuWieNLaG35+s80jNclPQ4h93qfq4VjdSg/2Za8b6km
 i6JA==
X-Gm-Message-State: APjAAAUwOOP2x1ywcLNs7R9D71hRIBEo52vQB65OS757c1y5RkoxBY45
 dmAjUMjRdQeGdTlWD4lhURvfL1ohZ2YK0A==
X-Google-Smtp-Source: APXvYqxrDB0OVg0ERQNnmg5c6UHBM/XNtCaWKes8hIeX19qwgG4w6OzxLz8Zz96+lz5tx0cuPQPCvw==
X-Received: by 2002:a1c:a943:: with SMTP id s64mr3086918wme.170.1573136031041; 
 Thu, 07 Nov 2019 06:13:51 -0800 (PST)
Received: from hwsrv-485799.hostwindsdns.com ([2a0d:7c40:3000:11f::2])
 by smtp.gmail.com with ESMTPSA id x9sm2194691wru.32.2019.11.07.06.13.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Nov 2019 06:13:50 -0800 (PST)
From: Valery Ivanov <ivalery111@gmail.com>
To: devel@drivrdev.osuosl.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] staging: octeon: fix missing a blank line after declaration
Date: Thu,  7 Nov 2019 14:13:22 +0000
Message-Id: <20191107141335.17641-1-ivalery111@gmail.com>
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
Cc: Valery Ivanov <ivalery111@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 Wambui Karuga <wambui.karugax@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

	This patch fixes "WARNING: Missing a blank line after declarations"
	Issue found by checkpatch.pl

Signed-off-by: Valery Ivanov <ivalery111@gmail.com>
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
