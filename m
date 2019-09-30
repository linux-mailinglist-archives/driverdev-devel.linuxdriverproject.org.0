Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 67244C266A
	for <lists+driverdev-devel@lfdr.de>; Mon, 30 Sep 2019 22:13:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4304F87667;
	Mon, 30 Sep 2019 20:13:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lyIHS3znzSW7; Mon, 30 Sep 2019 20:12:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id DD1FB8761F;
	Mon, 30 Sep 2019 20:12:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0116C1BF976
 for <devel@linuxdriverproject.org>; Mon, 30 Sep 2019 20:12:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id F1E1A87E7A
 for <devel@linuxdriverproject.org>; Mon, 30 Sep 2019 20:12:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id x0CsXn94AuOk for <devel@linuxdriverproject.org>;
 Mon, 30 Sep 2019 20:12:54 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D963688170
 for <devel@driverdev.osuosl.org>; Mon, 30 Sep 2019 20:12:54 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id q5so6197850pfg.13
 for <devel@driverdev.osuosl.org>; Mon, 30 Sep 2019 13:12:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=joelfernandes.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1dwBvieRM+vKXZ4KLxwbvrNPVV9nPlESTVr4TgXHT9c=;
 b=aKjqbywHKeBLuug1dtqF0XkdHMigPjUAxw3BlPnJjAjdAx5lkTdY7/HB6DEFlEzwpg
 AhdjS/kmkFWrj8YIGf/HcC3mSsAsOSf/Qn0ZfQzBhgZr3BzVaxd6bu1VuiA1PM8LTOHH
 FqNNFeJmYKO2QIZMxewOPXGVvgW2vbRcZZXn8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1dwBvieRM+vKXZ4KLxwbvrNPVV9nPlESTVr4TgXHT9c=;
 b=m0pD+4RLeudr/psF7zNsKvfTKEMabNUMlDM1DwwWZrEJaL9sIS8igqsg+iw3852aFZ
 Bb4DIaA//yLTwny9TjoW6cq+f33pU804sF5ha9XdjyZ4G2MxorDqkWWDdYindsCP/6c3
 1EMpBTo68IdbR02eCc+2tQgUH4FQuMgMJM48D2n/jDlUEYU41eF2fou3cU1gbgmYlNro
 iqCxmVijhTw2udh9azIUCocHBxzqkTx8yNP7HIkksEblSwUg1+T5sTKd1+4qb4n+w5tw
 mnYdvsUGWT+P8Og/G9ZJb7Zyg28x4sza2yNYbnWdHfJSGM5uk7jxnAGNcbXjOq49pwAW
 9owQ==
X-Gm-Message-State: APjAAAUgel3VqBiFES12M2+cpP8LeuHq0cpv37ATfEw89QyeGca3Tv6F
 4DE/NrSfNKbF/ReASH2Wf1IBIw==
X-Google-Smtp-Source: APXvYqxk3NZEibZ7+/VO5i5PFtNsFhkXGQFI0W+IiPDN0q29fCBgPUPrtv8hutsjM4/XczJf2Xdn9w==
X-Received: by 2002:a63:c148:: with SMTP id p8mr26335812pgi.282.1569874374266; 
 Mon, 30 Sep 2019 13:12:54 -0700 (PDT)
Received: from joelaf.cam.corp.google.com ([2620:15c:6:12:9c46:e0da:efbf:69cc])
 by smtp.gmail.com with ESMTPSA id t125sm12921894pfc.80.2019.09.30.13.12.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Sep 2019 13:12:53 -0700 (PDT)
From: "Joel Fernandes (Google)" <joel@joelfernandes.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] binder: Fix comment headers on binder_alloc_prepare_to_free()
Date: Mon, 30 Sep 2019 16:12:50 -0400
Message-Id: <20190930201250.139554-1-joel@joelfernandes.org>
X-Mailer: git-send-email 2.23.0.444.g18eeb5a265-goog
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
Cc: devel@driverdev.osuosl.org, Todd Kjos <tkjos@android.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 =?UTF-8?q?Arve=20Hj=C3=B8nnev=C3=A5g?= <arve@android.com>,
 "Joel Fernandes \(Google\)" <joel@joelfernandes.org>,
 Martijn Coenen <maco@android.com>, Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

binder_alloc_buffer_lookup() doesn't exist and is named
"binder_alloc_prepare_to_free()". Correct the code comments to reflect
this.

Signed-off-by: Joel Fernandes (Google) <joel@joelfernandes.org>

---
 drivers/android/binder_alloc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/android/binder_alloc.c b/drivers/android/binder_alloc.c
index 6d79a1b0d446..d42a8b2f636a 100644
--- a/drivers/android/binder_alloc.c
+++ b/drivers/android/binder_alloc.c
@@ -156,7 +156,7 @@ static struct binder_buffer *binder_alloc_prepare_to_free_locked(
 }
 
 /**
- * binder_alloc_buffer_lookup() - get buffer given user ptr
+ * binder_alloc_prepare_to_free() - get buffer given user ptr
  * @alloc:	binder_alloc for this proc
  * @user_ptr:	User pointer to buffer data
  *
-- 
2.23.0.444.g18eeb5a265-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
