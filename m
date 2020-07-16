Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 51CDA221A8C
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 Jul 2020 05:09:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 086C288E0D;
	Thu, 16 Jul 2020 03:09:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uLiSCQRIi0en; Thu, 16 Jul 2020 03:09:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1FF4A88DF4;
	Thu, 16 Jul 2020 03:08:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B34F81BF3AF
 for <devel@linuxdriverproject.org>; Thu, 16 Jul 2020 03:08:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id AD7A52045B
 for <devel@linuxdriverproject.org>; Thu, 16 Jul 2020 03:08:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bz654YnVJZws for <devel@linuxdriverproject.org>;
 Thu, 16 Jul 2020 03:08:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 77ABD20440
 for <devel@driverdev.osuosl.org>; Thu, 16 Jul 2020 03:08:54 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id k4so3235961pld.12
 for <devel@driverdev.osuosl.org>; Wed, 15 Jul 2020 20:08:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8vJxKwUVpAhdj4wYAl5b2tdLtDhCjBtUhiOv5fUux8k=;
 b=dTugxUNjGm8SBhEVwZ0yB8FvtZrzhFOHuSpiIvNE2E3SjUjSrIE1w14I52dw3Uk8b5
 3VAafc7gUmjsQ/YS7Xjq8i7OhMMWVeWrbTF8mKhc0S9n4IAuIzChi1+9oaZlREtdDKow
 3jCsslDzAr0zlil4XVqBtq+3neBsSD18zU00A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8vJxKwUVpAhdj4wYAl5b2tdLtDhCjBtUhiOv5fUux8k=;
 b=Bvr+MkImA/IZE/0r6b/coD/uJ+RE8I6CN+tRH7uOW51h5M6iDrA1Rk4A9ZKc9vDkv2
 y8F91vcEa2ncnAYhduH/n6B8AiLsHvASeMPTTk5afKIp00lnjgB7C7/8/kfXnNt6oqjb
 F+38f8F0ePf7FpqgA3RiMBA0V+GiPGvs3wA8C30ciRwoyEmx257OqHbz+ZKOanKCOudN
 UopJo8IkbBJdXh/rOlHp1M/KIQWFontT+g+CMoX7LrA0sDn6YNdbe7jmAo5M7EEk4h5a
 wimffDJEpyW1oM5fTtwS/WNBwH4FsHii4WqrGiEZ0LU5zGKXEB0TC6uzou6km4gCaei4
 7vlw==
X-Gm-Message-State: AOAM532XsnV1IfH4SVW/DlZu6PAZCS7HPOlhHOm2WKYcqey/92kIol4a
 lVv6It4TDu2WFci55KKScMD/pw==
X-Google-Smtp-Source: ABdhPJxTrfzJCqi7BCSMsLwnF0LnH2/m3v4TdrKv4bsn5z85zApyPj+eDhaQfjttTIQn/Q1hTEyF2g==
X-Received: by 2002:a17:902:6181:: with SMTP id
 u1mr1929746plj.205.1594868934031; 
 Wed, 15 Jul 2020 20:08:54 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id 19sm3209358pfy.193.2020.07.15.20.08.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Jul 2020 20:08:52 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 3/3] tasklet: Introduce new initialization API
Date: Wed, 15 Jul 2020 20:08:47 -0700
Message-Id: <20200716030847.1564131-4-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200716030847.1564131-1-keescook@chromium.org>
References: <20200716030847.1564131-1-keescook@chromium.org>
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
Cc: Kuppuswamy Sathyanarayanan <sathyanarayanan.kuppuswamy@linux.intel.com>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Oscar Carter <oscar.carter@gmx.com>, Mitchell Blank Jr <mitch@sfgoth.com>,
 kernel-hardening@lists.openwall.com, Peter Zijlstra <peterz@infradead.org>,
 kgdb-bugreport@lists.sourceforge.net,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>, alsa-devel@alsa-project.org,
 Allen Pais <allen.lkml@gmail.com>,
 Christian Gromm <christian.gromm@microchip.com>, Will Deacon <will@kernel.org>,
 devel@driverdev.osuosl.org, Jonathan Corbet <corbet@lwn.net>,
 Daniel Thompson <daniel.thompson@linaro.org>,
 "David S. Miller" <davem@davemloft.net>,
 Masahiro Yamada <masahiroy@kernel.org>, Takashi Iwai <tiwai@suse.com>,
 Julian Wiedmann <jwi@linux.ibm.com>,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Nishka Dasgupta <nishkadg.linux@gmail.com>, Jiri Slaby <jslaby@suse.com>,
 Jakub Kicinski <kuba@kernel.org>, Guenter Roeck <linux@roeck-us.net>,
 Wambui Karuga <wambui.karugax@gmail.com>, Kees Cook <keescook@chromium.org>,
 Vasily Gorbik <gor@linux.ibm.com>, linux-s390@vger.kernel.org,
 linux-kernel@vger.kernel.org, Heiko Carstens <hca@linux.ibm.com>,
 linux-input@vger.kernel.org, Ursula Braun <ubraun@linux.ibm.com>,
 Stephen Boyd <swboyd@chromium.org>,
 Chris Packham <chris.packham@alliedtelesis.co.nz>,
 Harald Freudenberger <freude@linux.ibm.com>,
 Thomas Gleixner <tglx@linutronix.de>, Jaroslav Kysela <perex@perex.cz>,
 Felipe Balbi <balbi@kernel.org>, Kyungtae Kim <kt0755@gmail.com>,
 netdev@vger.kernel.org, Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Douglas Anderson <dianders@chromium.org>,
 Kevin Curtis <kevin.curtis@farsite.co.uk>, linux-usb@vger.kernel.org,
 Jason Wessel <jason.wessel@windriver.com>,
 Romain Perier <romain.perier@gmail.com>, Karsten Graul <kgraul@linux.ibm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Romain Perier <romain.perier@gmail.com>

Nowadays, modern kernel subsystems that use callbacks pass the data
structure associated with a given callback as argument to the callback.
The tasklet subsystem remains one which passes an arbitrary unsigned
long to the callback function. This has several problems:

- This keeps an extra field for storing the argument in each tasklet
  data structure, it bloats the tasklet_struct structure with a redundant
  .data field

- No type checking can be performed on this argument. Instead of
  using container_of() like other callback subsystems, it forces callbacks
  to do explicit type cast of the unsigned long argument into the required
  object type.

- Buffer overflows can overwrite the .func and the .data field, so
  an attacker can easily overwrite the function and its first argument
  to whatever it wants.

Add a new tasklet initialization API, via DECLARE_TASKLET() and
tasklet_setup(), which will replace the existing ones.

This work is greatly inspired by the timer_struct conversion series,
see commit e99e88a9d2b0 ("treewide: setup_timer() -> timer_setup()")

To avoid problems with both -Wcast-function-type (which is enabled in
the kernel via -Wextra is several subsystems), and with mismatched
function prototypes when build with Control Flow Integrity enabled,
this adds the "use_callback" member to let the tasklet caller choose
which union member to call through. Once all old API uses are removed,
this and the .data member will be removed as well. (On 64-bit this does
not grow the struct size as the new member fills the hole after atomic_t,
which is also "int" sized.)

Signed-off-by: Romain Perier <romain.perier@gmail.com>
Co-developed-by: Allen Pais <allen.lkml@gmail.com>
Signed-off-by: Allen Pais <allen.lkml@gmail.com>
Co-developed-by: Kees Cook <keescook@chromium.org>
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 include/linux/interrupt.h | 24 +++++++++++++++++++++++-
 kernel/softirq.c          | 18 +++++++++++++++++-
 2 files changed, 40 insertions(+), 2 deletions(-)

diff --git a/include/linux/interrupt.h b/include/linux/interrupt.h
index b911196f03eb..15570b237e53 100644
--- a/include/linux/interrupt.h
+++ b/include/linux/interrupt.h
@@ -608,10 +608,30 @@ struct tasklet_struct
 	struct tasklet_struct *next;
 	unsigned long state;
 	atomic_t count;
-	void (*func)(unsigned long);
+	bool use_callback;
+	union {
+		void (*func)(unsigned long data);
+		void (*callback)(struct tasklet_struct *t);
+	};
 	unsigned long data;
 };
 
+#define DECLARE_TASKLET(name, _callback)		\
+struct tasklet_struct name = {				\
+	.count = ATOMIC_INIT(0),			\
+	.callback = _callback,				\
+	.use_callback = true,				\
+}
+
+#define DECLARE_TASKLET_DISABLED(name, _callback)	\
+struct tasklet_struct name = {				\
+	.count = ATOMIC_INIT(1),			\
+	.callback = _callback,				\
+}
+
+#define from_tasklet(var, callback_tasklet, tasklet_fieldname)	\
+	container_of(callback_tasklet, typeof(*var), tasklet_fieldname)
+
 #define DECLARE_TASKLET_OLD(name, _func)		\
 struct tasklet_struct name = {				\
 	.count = ATOMIC_INIT(0),			\
@@ -691,6 +711,8 @@ extern void tasklet_kill(struct tasklet_struct *t);
 extern void tasklet_kill_immediate(struct tasklet_struct *t, unsigned int cpu);
 extern void tasklet_init(struct tasklet_struct *t,
 			 void (*func)(unsigned long), unsigned long data);
+extern void tasklet_setup(struct tasklet_struct *t,
+			  void (*callback)(struct tasklet_struct *));
 
 /*
  * Autoprobing for irqs:
diff --git a/kernel/softirq.c b/kernel/softirq.c
index c4201b7f42b1..292e7c2d2333 100644
--- a/kernel/softirq.c
+++ b/kernel/softirq.c
@@ -547,7 +547,10 @@ static void tasklet_action_common(struct softirq_action *a,
 				if (!test_and_clear_bit(TASKLET_STATE_SCHED,
 							&t->state))
 					BUG();
-				t->func(t->data);
+				if (t->use_callback)
+					t->callback(t);
+				else
+					t->func(t->data);
 				tasklet_unlock(t);
 				continue;
 			}
@@ -573,6 +576,18 @@ static __latent_entropy void tasklet_hi_action(struct softirq_action *a)
 	tasklet_action_common(a, this_cpu_ptr(&tasklet_hi_vec), HI_SOFTIRQ);
 }
 
+void tasklet_setup(struct tasklet_struct *t,
+		   void (*callback)(struct tasklet_struct *))
+{
+	t->next = NULL;
+	t->state = 0;
+	atomic_set(&t->count, 0);
+	t->callback = callback;
+	t->use_callback = true;
+	t->data = 0;
+}
+EXPORT_SYMBOL(tasklet_setup);
+
 void tasklet_init(struct tasklet_struct *t,
 		  void (*func)(unsigned long), unsigned long data)
 {
@@ -580,6 +595,7 @@ void tasklet_init(struct tasklet_struct *t,
 	t->state = 0;
 	atomic_set(&t->count, 0);
 	t->func = func;
+	t->use_callback = false;
 	t->data = data;
 }
 EXPORT_SYMBOL(tasklet_init);
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
