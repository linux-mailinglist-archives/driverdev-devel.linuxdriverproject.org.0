Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D644ADB39
	for <lists+driverdev-devel@lfdr.de>; Mon,  9 Sep 2019 16:32:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BF7B984EC1;
	Mon,  9 Sep 2019 14:32:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vHmK3XtlNwO0; Mon,  9 Sep 2019 14:32:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2113F85102;
	Mon,  9 Sep 2019 14:32:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2624E1BF3AD
 for <devel@linuxdriverproject.org>; Mon,  9 Sep 2019 14:32:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1FC4520453
 for <devel@linuxdriverproject.org>; Mon,  9 Sep 2019 14:32:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W6Qucjx+hO2I for <devel@linuxdriverproject.org>;
 Mon,  9 Sep 2019 14:32:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com
 [209.85.222.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 840822043C
 for <devel@driverdev.osuosl.org>; Mon,  9 Sep 2019 14:32:50 +0000 (UTC)
Received: by mail-qk1-f196.google.com with SMTP id q203so13272458qke.1
 for <devel@driverdev.osuosl.org>; Mon, 09 Sep 2019 07:32:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=nB56A57AoyNRyVPYSkSiIG8z/DKVcHYWbRMJROXBVZs=;
 b=n3A3SuBEOsX4sJKFvwwRlbK2DLpNzRA/Y2fQbBpHxnQ1JPuEDug9rMnHbmmKiBAYbJ
 lroXsTtteqs44K9uuzYAbFjhWhUT2D4Bx3uFhsntfJFu6AyScMn9zdizF34tKkEA9wIv
 SazKmonLK3tbTKMv2De6mOVe1pp58GC0oZQQnrzE5XXaxaQ+TVrfk67gmX0u4OO6i0hN
 0anmiiWYZCSzZXHAUBFuzErv2zeAKV3v9IG1MPxXC15jVmPEiYNjpYwiUYRSW3sqs+1y
 aBGOP8KrNYrhow67bOipVrXOgk6mzsIl9/DrmPj0znF8pFJDeuqdeI+LTooHycFDDnB5
 sEow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=nB56A57AoyNRyVPYSkSiIG8z/DKVcHYWbRMJROXBVZs=;
 b=ZWPgoYRHHJnhDh5ua7sbPiy3TsG4tibkCEnSQhQyxHNxRe3ddHfqN8OJDAiiwtE/4B
 Gb9CTNa6/IFlIq4Qjbao5XoQDeUFmfMqJThGtry+kbkpJ14xb/OzUz1DjDm0wxv9tJqQ
 OJ1whJ94GEgmY+uj8BwQFpGh6E3RAuetxNACoKn8JjUWEJbnWEN9zBrUjyxrawCswviD
 KQSqJDHeNlfM4iew3kIXCjLHpRbimb0ZyrbcNal55tGu+glQGGazBSjOKXA4HzMT3qjr
 lmQKUfu4FoRCgg9NO0fIHupBycHrJdDuVYDXxGp0VM9kD+1xrXEJ7zN/ecoZaSSqWd60
 tV+g==
X-Gm-Message-State: APjAAAUDfEF7yNjrMQYQ0fCcWV2Iq+XDYdqW/JXSOeSRlzj6UIneGIKe
 dUxvI7I8FVR1jo73gJe8w0I=
X-Google-Smtp-Source: APXvYqy4+0bJz0i4RqatiNd+TkqwqmaVpq5uWSNuVgiLEEEcBHGccDyBnANV5//HcaxMkwm6XEYLBw==
X-Received: by 2002:a37:9547:: with SMTP id x68mr6126614qkd.6.1568039569425;
 Mon, 09 Sep 2019 07:32:49 -0700 (PDT)
Received: from localhost.localdomain (201-42-109-60.dsl.telesp.net.br.
 [201.42.109.60])
 by smtp.gmail.com with ESMTPSA id x55sm9363799qta.74.2019.09.09.07.32.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Sep 2019 07:32:49 -0700 (PDT)
From: Julio Faracco <jcfaracco@gmail.com>
To: greybus-dev@lists.linaro.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, gregkh@linuxfoundation.org
Subject: [PATCH v2] staging: greybus: loopback_test: Adding missing brackets
 into if..else block
Date: Mon,  9 Sep 2019 14:32:44 +0000
Message-Id: <20190909143244.371-1-jcfaracco@gmail.com>
X-Mailer: git-send-email 2.20.1
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
Cc: lkcamp@lists.libreplanetbr.org, elder@kernel.org, johan@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Inside a block of if..else conditional, else structure does not contain
brackets. This is not following regular policies of kernel coding style.
All parts of this conditional blocks should respect brackets inclusion.
This commit removes some blank spaces that are not following brackets
policies too.

Signed-off-by: Julio Faracco <jcfaracco@gmail.com>

---

Changes from v1:
- fixing patch description
- including more cases that brackets does not fill kernel code policies.

---
---
 drivers/staging/greybus/tools/loopback_test.c | 14 +++-----------
 1 file changed, 3 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/greybus/tools/loopback_test.c b/drivers/staging/greybus/tools/loopback_test.c
index ba6f905f2..22e79f197 100644
--- a/drivers/staging/greybus/tools/loopback_test.c
+++ b/drivers/staging/greybus/tools/loopback_test.c
@@ -238,7 +238,6 @@ static void show_loopback_devices(struct loopback_test *t)
 
 	for (i = 0; i < t->device_count; i++)
 		printf("device[%d] = %s\n", i, t->devices[i].name);
-
 }
 
 int open_sysfs(const char *sys_pfx, const char *node, int flags)
@@ -273,7 +272,6 @@ float read_sysfs_float_fd(int fd, const char *sys_pfx, const char *node)
 	char buf[SYSFS_MAX_INT];
 
 	if (read(fd, buf, sizeof(buf)) < 0) {
-
 		fprintf(stderr, "unable to read from %s%s %s\n", sys_pfx, node,
 			strerror(errno));
 		close(fd);
@@ -366,7 +364,6 @@ static int get_results(struct loopback_test *t)
 			r->apbridge_unipro_latency_max - r->apbridge_unipro_latency_min;
 		r->gbphy_firmware_latency_jitter =
 			r->gbphy_firmware_latency_max - r->gbphy_firmware_latency_min;
-
 	}
 
 	/*calculate the aggregate results of all enabled devices */
@@ -406,7 +403,6 @@ static int get_results(struct loopback_test *t)
 			r->apbridge_unipro_latency_max - r->apbridge_unipro_latency_min;
 		r->gbphy_firmware_latency_jitter =
 			r->gbphy_firmware_latency_max - r->gbphy_firmware_latency_min;
-
 	}
 
 	return 0;
@@ -535,8 +531,8 @@ static int log_results(struct loopback_test *t)
 			fprintf(stderr, "unable to open %s for appendation\n", file_name);
 			abort();
 		}
-
 	}
+
 	for (i = 0; i < t->device_count; i++) {
 		if (!device_enabled(t, i))
 			continue;
@@ -549,10 +545,8 @@ static int log_results(struct loopback_test *t)
 			if (ret == -1)
 				fprintf(stderr, "unable to write %d bytes to csv.\n", len);
 		}
-
 	}
 
-
 	if (t->aggregate_output) {
 		len = format_output(t, &t->aggregate_results, "aggregate",
 				    data, sizeof(data), &tm);
@@ -739,7 +733,6 @@ static int wait_for_complete(struct loopback_test *t)
 		ts = &t->poll_timeout;
 
 	while (1) {
-
 		ret = ppoll(t->fds, t->poll_count, ts, &mask_old);
 		if (ret <= 0) {
 			stop_tests(t);
@@ -801,8 +794,9 @@ static void prepare_devices(struct loopback_test *t)
 			write_sysfs_val(t->devices[i].sysfs_entry,
 					"outstanding_operations_max",
 					t->async_outstanding_operations);
-		} else
+		} else {
 			write_sysfs_val(t->devices[i].sysfs_entry, "async", 0);
+		}
 	}
 }
 
@@ -879,10 +873,8 @@ static int sanity_check(struct loopback_test *t)
 			fprintf(stderr, "Bad device mask %x\n", (1 << i));
 			return -1;
 		}
-
 	}
 
-
 	return 0;
 }
 
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
