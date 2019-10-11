Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E9C3D3912
	for <lists+driverdev-devel@lfdr.de>; Fri, 11 Oct 2019 08:03:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E3F2C88841;
	Fri, 11 Oct 2019 06:03:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IsMhjP8TAizu; Fri, 11 Oct 2019 06:03:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id BDE1588835;
	Fri, 11 Oct 2019 06:03:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 97D6A1BF841
 for <devel@linuxdriverproject.org>; Fri, 11 Oct 2019 06:03:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8B14B87FB9
 for <devel@linuxdriverproject.org>; Fri, 11 Oct 2019 06:03:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gKKYZBeWYjxt for <devel@linuxdriverproject.org>;
 Fri, 11 Oct 2019 06:03:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 04BD687F9A
 for <devel@driverdev.osuosl.org>; Fri, 11 Oct 2019 06:03:48 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id a2so5405223pfo.10
 for <devel@driverdev.osuosl.org>; Thu, 10 Oct 2019 23:03:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=78A7v/fFdhcM+C5XDuRJJKeqGNkh4U2EwVbQjxNiiy4=;
 b=TIio2u/GyvX/4+US8sREUzM6Z3hhenOMPV+381jep+sjhxKO4duKvimQMh/WPE0REM
 vQ+hdZk6PiDEiiEI5UMiLw/ELIodqrpT+mMyC4BMOpNwqbEijlZRR2UvLGuqF2TIfk/E
 m72QSO8KEWaevDMZk1br1k5QbLZAl8VWvHZcAZsEJqnh/kvm6aU3y4x1u92gjAauMcJx
 52kH3N0IiXPMGRJ+7CQs70UYTu0oBw38cAR1iLYvYDuypvyDYmmYbidP53/YVZAdmPVX
 uIK1IPLS5uI3Z7/lGmjddnqWztt0vd7rZGNO01P/gZR7v2LfI8uvp9pfluKIfS5gSwga
 yr0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=78A7v/fFdhcM+C5XDuRJJKeqGNkh4U2EwVbQjxNiiy4=;
 b=P6iYIcOpGoQsqGJjX1c8KZ0uzq68xMhoQcP2NTa2lTTzI1fcYQrYjLMv0kMpZhkv+X
 sU4OJcSqUuJWdrae/vxzRERcSvs0G0qGIwP7Wyf25hNCI20fHSD9URzxqEb94lJm22mV
 kSl6YU2lJsEBpXbuLz/yEFOT9ZckiPOwptdVFqNZ0ML0qOQ3rTqlfpe8kU3/0nspnhg8
 vzffhESYQvSQH74aCUDuEgckb61QxD6qCEq5tojMSR4M/ElCYLdr2dmKLpWOxCfSt1/T
 UC6AQ1q7PIuWa3/6Az9bIhAABBOCViNodfwS+89/mK5jG8Azo9FxAaKm3KlNtHAlt8+d
 wRjA==
X-Gm-Message-State: APjAAAXbZKH3gGKZ0hVpzmdKAjJu6t4v8rLhvpXuHXchh/4HYg++f5de
 pkPqMU0cCHKsuE/3vtJnN9M=
X-Google-Smtp-Source: APXvYqxAbeDhratVFVpqAgrqEEyvL459IUn6tvSiUjmOrTT0qhi5OdkDFtTTk4rrCFl8KFbdt0RVOg==
X-Received: by 2002:a62:6411:: with SMTP id y17mr14803815pfb.158.1570773827623; 
 Thu, 10 Oct 2019 23:03:47 -0700 (PDT)
Received: from wambui.zuku.co.ke ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id p11sm9395715pgb.1.2019.10.10.23.03.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Oct 2019 23:03:47 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 5/5] staging: octeon: remove typedef declaration for
 cvmx_fau_op_size_t
Date: Fri, 11 Oct 2019 09:02:42 +0300
Message-Id: <777c55e3bb9f2f4804765bb0daca1720d8aa5085.1570773209.git.wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <cover.1570773209.git.wambui.karugax@gmail.com>
References: <cover.1570773209.git.wambui.karugax@gmail.com>
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
 linux-kernel@vger.kernel.org, Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove addition of new typedef for enum cvmx_fau_op_size_t
in drivers/staging/octeon/octeon-stubs.h.
Issue found by checkpatch.pl

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 drivers/staging/octeon/octeon-stubs.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/octeon/octeon-stubs.h b/drivers/staging/octeon/octeon-stubs.h
index 06e6a0223416..a0aa99e7b757 100644
--- a/drivers/staging/octeon/octeon-stubs.h
+++ b/drivers/staging/octeon/octeon-stubs.h
@@ -205,12 +205,12 @@ enum cvmx_fau_reg_32_t {
 	CVMX_FAU_REG_32_START	= 0,
 };
 
-typedef enum {
+enum cvmx_fau_op_size_t {
 	CVMX_FAU_OP_SIZE_8 = 0,
 	CVMX_FAU_OP_SIZE_16 = 1,
 	CVMX_FAU_OP_SIZE_32 = 2,
 	CVMX_FAU_OP_SIZE_64 = 3
-} cvmx_fau_op_size_t;
+};
 
 typedef enum {
 	CVMX_SPI_MODE_UNKNOWN = 0,
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
