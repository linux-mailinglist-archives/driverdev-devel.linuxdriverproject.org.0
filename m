Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 73604221A8D
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 Jul 2020 05:09:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E38D9204D3;
	Thu, 16 Jul 2020 03:09:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bFF3+spmg-pV; Thu, 16 Jul 2020 03:09:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 24EF220471;
	Thu, 16 Jul 2020 03:09:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1D53C1BF3AF
 for <devel@linuxdriverproject.org>; Thu, 16 Jul 2020 03:08:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 195FC88DE6
 for <devel@linuxdriverproject.org>; Thu, 16 Jul 2020 03:08:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0C9KRqVRwHDu for <devel@linuxdriverproject.org>;
 Thu, 16 Jul 2020 03:08:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 247B087944
 for <devel@driverdev.osuosl.org>; Thu, 16 Jul 2020 03:08:55 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id k27so4130799pgm.2
 for <devel@driverdev.osuosl.org>; Wed, 15 Jul 2020 20:08:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=YKRQn4PWPR6aqJLM+dSe6CfJ97Lq3xoVJCKy4oCXcfw=;
 b=d2aHLAxcaHOfkEP6nSB6KRJPecbpK9NMvd5SB5ZS6VfRpf1rJvFbbYDLbDXhKkuD+y
 HgFhdPAP3NFRygkq9dgGUdHjAY890WwD+xL26TOO99/l34puJrlNga0LGbY+CUrGY3gs
 8UxdHR34GQbfiCHQ5bl+ejr55J1Ry2/eP9BNk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=YKRQn4PWPR6aqJLM+dSe6CfJ97Lq3xoVJCKy4oCXcfw=;
 b=pgPjn4UmbPDSEoRvcfB9KJyyG69LfP4oCW8SFI++zzKSd4edf0VlUwn/8w9+Pzqm+N
 QmGDd+XqHatWycm4KrG0xqTNrXZ0FP29EvAYQ2VYqSpsgIMe7zyQSf/zM7OC9cX3R6c+
 mCIWdrXmLdSg7YG7degqh2yn7NtGj1OCKvqr7SomEWnizWfSVLxJSd0ymPHPHUMGA9Iv
 kr7v1XZ/Vufv+UMHVINYgFAoSrk0KJUjvgwXYCBAanVoNUaZTdddnckUHTLE84PFEFZf
 FG0fOgrueAhDF2Txuy4ZfYXzpBWkNgXKDV1NXrpKC/6k4NZxyse/X8d7TkV65L7lgvU2
 qlTg==
X-Gm-Message-State: AOAM531tc/NE2QpngxijJsSPM2rInPfEQ7VHs+K70kmfxbyxsfgfBmaD
 /3ggeLv1JczjpY/Pzk5h/TdjQw==
X-Google-Smtp-Source: ABdhPJyaie5LKd1G/WgbNxozg5eWAhk9NUlZRTUVHmeHZhL3LP86asLpTKIRghDjWTjPimNL57cO8g==
X-Received: by 2002:a63:4b04:: with SMTP id y4mr2461067pga.158.1594868934634; 
 Wed, 15 Jul 2020 20:08:54 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id hg13sm3160552pjb.21.2020.07.15.20.08.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Jul 2020 20:08:52 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 2/3] treewide: Replace DECLARE_TASKLET() with
 DECLARE_TASKLET_OLD()
Date: Wed, 15 Jul 2020 20:08:46 -0700
Message-Id: <20200716030847.1564131-3-keescook@chromium.org>
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

This converts all the existing DECLARE_TASKLET() (and ...DISABLED)
macros with DECLARE_TASKLET_OLD() in preparation for refactoring the
tasklet callback type. All existing DECLARE_TASKLET() users had a "0"
data argument, it has been removed here as well.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/input/keyboard/omap-keypad.c   |  2 +-
 drivers/input/serio/hil_mlc.c          |  2 +-
 drivers/net/wan/farsync.c              |  4 ++--
 drivers/s390/crypto/ap_bus.c           |  2 +-
 drivers/staging/most/dim2/dim2.c       |  2 +-
 drivers/staging/octeon/ethernet-tx.c   |  2 +-
 drivers/tty/vt/keyboard.c              |  2 +-
 drivers/usb/gadget/udc/snps_udc_core.c |  2 +-
 drivers/usb/host/fhci-sched.c          |  2 +-
 include/linux/interrupt.h              | 15 ++++++++++-----
 kernel/backtracetest.c                 |  2 +-
 kernel/debug/debug_core.c              |  2 +-
 kernel/irq/resend.c                    |  2 +-
 net/atm/pppoatm.c                      |  2 +-
 net/iucv/iucv.c                        |  2 +-
 sound/drivers/pcsp/pcsp_lib.c          |  2 +-
 16 files changed, 26 insertions(+), 21 deletions(-)

diff --git a/drivers/input/keyboard/omap-keypad.c b/drivers/input/keyboard/omap-keypad.c
index 5fe7a5633e33..dbe836c7ff47 100644
--- a/drivers/input/keyboard/omap-keypad.c
+++ b/drivers/input/keyboard/omap-keypad.c
@@ -46,7 +46,7 @@ struct omap_kp {
 	unsigned short keymap[];
 };
 
-static DECLARE_TASKLET_DISABLED(kp_tasklet, omap_kp_tasklet, 0);
+static DECLARE_TASKLET_DISABLED_OLD(kp_tasklet, omap_kp_tasklet);
 
 static unsigned int *row_gpios;
 static unsigned int *col_gpios;
diff --git a/drivers/input/serio/hil_mlc.c b/drivers/input/serio/hil_mlc.c
index e1423f7648d6..65f4e9d62a67 100644
--- a/drivers/input/serio/hil_mlc.c
+++ b/drivers/input/serio/hil_mlc.c
@@ -77,7 +77,7 @@ static struct timer_list	hil_mlcs_kicker;
 static int			hil_mlcs_probe;
 
 static void hil_mlcs_process(unsigned long unused);
-static DECLARE_TASKLET_DISABLED(hil_mlcs_tasklet, hil_mlcs_process, 0);
+static DECLARE_TASKLET_DISABLED_OLD(hil_mlcs_tasklet, hil_mlcs_process);
 
 
 /* #define HIL_MLC_DEBUG */
diff --git a/drivers/net/wan/farsync.c b/drivers/net/wan/farsync.c
index 7916efce7188..f5198a391417 100644
--- a/drivers/net/wan/farsync.c
+++ b/drivers/net/wan/farsync.c
@@ -569,8 +569,8 @@ static void do_bottom_half_rx(struct fst_card_info *card);
 static void fst_process_tx_work_q(unsigned long work_q);
 static void fst_process_int_work_q(unsigned long work_q);
 
-static DECLARE_TASKLET(fst_tx_task, fst_process_tx_work_q, 0);
-static DECLARE_TASKLET(fst_int_task, fst_process_int_work_q, 0);
+static DECLARE_TASKLET_OLD(fst_tx_task, fst_process_tx_work_q);
+static DECLARE_TASKLET_OLD(fst_int_task, fst_process_int_work_q);
 
 static struct fst_card_info *fst_card_array[FST_MAX_CARDS];
 static spinlock_t fst_work_q_lock;
diff --git a/drivers/s390/crypto/ap_bus.c b/drivers/s390/crypto/ap_bus.c
index e71ca4a719a5..2589ccd257e3 100644
--- a/drivers/s390/crypto/ap_bus.c
+++ b/drivers/s390/crypto/ap_bus.c
@@ -93,7 +93,7 @@ static DECLARE_WORK(ap_scan_work, ap_scan_bus);
  * Tasklet & timer for AP request polling and interrupts
  */
 static void ap_tasklet_fn(unsigned long);
-static DECLARE_TASKLET(ap_tasklet, ap_tasklet_fn, 0);
+static DECLARE_TASKLET_OLD(ap_tasklet, ap_tasklet_fn);
 static DECLARE_WAIT_QUEUE_HEAD(ap_poll_wait);
 static struct task_struct *ap_poll_kthread;
 static DEFINE_MUTEX(ap_poll_thread_mutex);
diff --git a/drivers/staging/most/dim2/dim2.c b/drivers/staging/most/dim2/dim2.c
index 8e0f27e61652..509c8012d20b 100644
--- a/drivers/staging/most/dim2/dim2.c
+++ b/drivers/staging/most/dim2/dim2.c
@@ -46,7 +46,7 @@ MODULE_PARM_DESC(fcnt, "Num of frames per sub-buffer for sync channels as a powe
 static DEFINE_SPINLOCK(dim_lock);
 
 static void dim2_tasklet_fn(unsigned long data);
-static DECLARE_TASKLET(dim2_tasklet, dim2_tasklet_fn, 0);
+static DECLARE_TASKLET_OLD(dim2_tasklet, dim2_tasklet_fn);
 
 /**
  * struct hdm_channel - private structure to keep channel specific data
diff --git a/drivers/staging/octeon/ethernet-tx.c b/drivers/staging/octeon/ethernet-tx.c
index ab7dd8216006..9c71ad5af7b9 100644
--- a/drivers/staging/octeon/ethernet-tx.c
+++ b/drivers/staging/octeon/ethernet-tx.c
@@ -41,7 +41,7 @@
 #endif
 
 static void cvm_oct_tx_do_cleanup(unsigned long arg);
-static DECLARE_TASKLET(cvm_oct_tx_cleanup_tasklet, cvm_oct_tx_do_cleanup, 0);
+static DECLARE_TASKLET_OLD(cvm_oct_tx_cleanup_tasklet, cvm_oct_tx_do_cleanup);
 
 /* Maximum number of SKBs to try to free per xmit packet. */
 #define MAX_SKB_TO_FREE (MAX_OUT_QUEUE_DEPTH * 2)
diff --git a/drivers/tty/vt/keyboard.c b/drivers/tty/vt/keyboard.c
index 568b2171f335..f80199984ee0 100644
--- a/drivers/tty/vt/keyboard.c
+++ b/drivers/tty/vt/keyboard.c
@@ -1236,7 +1236,7 @@ static void kbd_bh(unsigned long dummy)
 	}
 }
 
-DECLARE_TASKLET_DISABLED(keyboard_tasklet, kbd_bh, 0);
+DECLARE_TASKLET_DISABLED_OLD(keyboard_tasklet, kbd_bh);
 
 #if defined(CONFIG_X86) || defined(CONFIG_IA64) || defined(CONFIG_ALPHA) ||\
     defined(CONFIG_MIPS) || defined(CONFIG_PPC) || defined(CONFIG_SPARC) ||\
diff --git a/drivers/usb/gadget/udc/snps_udc_core.c b/drivers/usb/gadget/udc/snps_udc_core.c
index afdd28f332ce..e76f1a50b0fc 100644
--- a/drivers/usb/gadget/udc/snps_udc_core.c
+++ b/drivers/usb/gadget/udc/snps_udc_core.c
@@ -96,7 +96,7 @@ static int stop_pollstall_timer;
 static DECLARE_COMPLETION(on_pollstall_exit);
 
 /* tasklet for usb disconnect */
-static DECLARE_TASKLET(disconnect_tasklet, udc_tasklet_disconnect, 0);
+static DECLARE_TASKLET_OLD(disconnect_tasklet, udc_tasklet_disconnect);
 
 /* endpoint names used for print */
 static const char ep0_string[] = "ep0in";
diff --git a/drivers/usb/host/fhci-sched.c b/drivers/usb/host/fhci-sched.c
index 3235d5307403..5c423f240a1f 100644
--- a/drivers/usb/host/fhci-sched.c
+++ b/drivers/usb/host/fhci-sched.c
@@ -677,7 +677,7 @@ static void process_done_list(unsigned long data)
 	enable_irq(fhci_to_hcd(fhci)->irq);
 }
 
-DECLARE_TASKLET(fhci_tasklet, process_done_list, 0);
+DECLARE_TASKLET_OLD(fhci_tasklet, process_done_list);
 
 /* transfer complted callback */
 u32 fhci_transfer_confirm_callback(struct fhci_hcd *fhci)
diff --git a/include/linux/interrupt.h b/include/linux/interrupt.h
index 5db970b6615a..b911196f03eb 100644
--- a/include/linux/interrupt.h
+++ b/include/linux/interrupt.h
@@ -612,12 +612,17 @@ struct tasklet_struct
 	unsigned long data;
 };
 
-#define DECLARE_TASKLET(name, func, data) \
-struct tasklet_struct name = { NULL, 0, ATOMIC_INIT(0), func, data }
-
-#define DECLARE_TASKLET_DISABLED(name, func, data) \
-struct tasklet_struct name = { NULL, 0, ATOMIC_INIT(1), func, data }
+#define DECLARE_TASKLET_OLD(name, _func)		\
+struct tasklet_struct name = {				\
+	.count = ATOMIC_INIT(0),			\
+	.func = _func,					\
+}
 
+#define DECLARE_TASKLET_DISABLED_OLD(name, _func)	\
+struct tasklet_struct name = {				\
+	.count = ATOMIC_INIT(1),			\
+	.func = _func,					\
+}
 
 enum
 {
diff --git a/kernel/backtracetest.c b/kernel/backtracetest.c
index a2a97fa3071b..370217dd7e39 100644
--- a/kernel/backtracetest.c
+++ b/kernel/backtracetest.c
@@ -29,7 +29,7 @@ static void backtrace_test_irq_callback(unsigned long data)
 	complete(&backtrace_work);
 }
 
-static DECLARE_TASKLET(backtrace_tasklet, &backtrace_test_irq_callback, 0);
+static DECLARE_TASKLET_OLD(backtrace_tasklet, &backtrace_test_irq_callback);
 
 static void backtrace_test_irq(void)
 {
diff --git a/kernel/debug/debug_core.c b/kernel/debug/debug_core.c
index 9e5934780f41..b16dbc1bf056 100644
--- a/kernel/debug/debug_core.c
+++ b/kernel/debug/debug_core.c
@@ -1068,7 +1068,7 @@ static void kgdb_tasklet_bpt(unsigned long ing)
 	atomic_set(&kgdb_break_tasklet_var, 0);
 }
 
-static DECLARE_TASKLET(kgdb_tasklet_breakpoint, kgdb_tasklet_bpt, 0);
+static DECLARE_TASKLET_OLD(kgdb_tasklet_breakpoint, kgdb_tasklet_bpt);
 
 void kgdb_schedule_breakpoint(void)
 {
diff --git a/kernel/irq/resend.c b/kernel/irq/resend.c
index 27634f4022d0..c48ce19a257f 100644
--- a/kernel/irq/resend.c
+++ b/kernel/irq/resend.c
@@ -45,7 +45,7 @@ static void resend_irqs(unsigned long arg)
 }
 
 /* Tasklet to handle resend: */
-static DECLARE_TASKLET(resend_tasklet, resend_irqs, 0);
+static DECLARE_TASKLET_OLD(resend_tasklet, resend_irqs);
 
 static int irq_sw_resend(struct irq_desc *desc)
 {
diff --git a/net/atm/pppoatm.c b/net/atm/pppoatm.c
index 45d8e1d5d033..579b66da1d95 100644
--- a/net/atm/pppoatm.c
+++ b/net/atm/pppoatm.c
@@ -393,7 +393,7 @@ static int pppoatm_assign_vcc(struct atm_vcc *atmvcc, void __user *arg)
 	 * Each PPPoATM instance has its own tasklet - this is just a
 	 * prototypical one used to initialize them
 	 */
-	static const DECLARE_TASKLET(tasklet_proto, pppoatm_wakeup_sender, 0);
+	static const DECLARE_TASKLET_OLD(tasklet_proto, pppoatm_wakeup_sender);
 	if (copy_from_user(&be, arg, sizeof be))
 		return -EFAULT;
 	if (be.encaps != PPPOATM_ENCAPS_AUTODETECT &&
diff --git a/net/iucv/iucv.c b/net/iucv/iucv.c
index 19250a0c85d3..cd2e468852e7 100644
--- a/net/iucv/iucv.c
+++ b/net/iucv/iucv.c
@@ -105,7 +105,7 @@ static LIST_HEAD(iucv_task_queue);
  * The tasklet for fast delivery of iucv interrupts.
  */
 static void iucv_tasklet_fn(unsigned long);
-static DECLARE_TASKLET(iucv_tasklet, iucv_tasklet_fn,0);
+static DECLARE_TASKLET_OLD(iucv_tasklet, iucv_tasklet_fn);
 
 /*
  * Queue of interrupt buffers for delivery via a work queue
diff --git a/sound/drivers/pcsp/pcsp_lib.c b/sound/drivers/pcsp/pcsp_lib.c
index 05244b11ed5e..4e79293d7f11 100644
--- a/sound/drivers/pcsp/pcsp_lib.c
+++ b/sound/drivers/pcsp/pcsp_lib.c
@@ -36,7 +36,7 @@ static void pcsp_call_pcm_elapsed(unsigned long priv)
 	}
 }
 
-static DECLARE_TASKLET(pcsp_pcm_tasklet, pcsp_call_pcm_elapsed, 0);
+static DECLARE_TASKLET_OLD(pcsp_pcm_tasklet, pcsp_call_pcm_elapsed);
 
 /* write the port and returns the next expire time in ns;
  * called at the trigger-start and in hrtimer callback
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
