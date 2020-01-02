Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5428F12E547
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Jan 2020 11:59:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2D6D38640E;
	Thu,  2 Jan 2020 10:59:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qa39nUfRcB5k; Thu,  2 Jan 2020 10:59:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id DCC4285CBB;
	Thu,  2 Jan 2020 10:59:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4F0681BF20F
 for <devel@linuxdriverproject.org>; Thu,  2 Jan 2020 10:59:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4B36B20346
 for <devel@linuxdriverproject.org>; Thu,  2 Jan 2020 10:59:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SD0mpaWGb7bh for <devel@linuxdriverproject.org>;
 Thu,  2 Jan 2020 10:59:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sonic304-46.consmr.mail.sg3.yahoo.com
 (sonic304-46.consmr.mail.sg3.yahoo.com [106.10.242.236])
 by silver.osuosl.org (Postfix) with ESMTPS id 734E520134
 for <devel@driverdev.osuosl.org>; Thu,  2 Jan 2020 10:59:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1577962786; bh=+mvjWARcTESmxm/2bdqZfDd00mypxTcNWmHOIzgHc0E=;
 h=From:To:Cc:Subject:Date:References:From:Subject;
 b=K5GE0IWBvB43i6Xs5NxvvUytkOFWzX5kv7VpJcmOcpRSOKV14XYFWh67sRr9VMErqYTfzzhHUZ+dd+ZE1vKyfEhXBdnFD7UpW25MU5LYrL/jaDWQ+TQ/5mdECBTFGPsN0XfQmmAl2WRvFGTWveoN+Z233pHguktaceemGlzLBB17Sk4BIan3KQNsnDqrH0TkwhSpgQUVv+0sUqa/jFUmkLJdSUFjwa3u1brjuSd1JpLzF23PsSRoMs6HN+G3bnbpCbKfOb0M+rW8qg0mIO+Cit4gZezSMTjgNZcPs7cFMYkjgWRBKXbNwmiF2WCBE+XHb7QkCnih4dXr3PAZy3O8Vg==
X-YMail-OSG: JNUbdPQVM1l_leUHjY7sj7jcQl9mcB79O0cqU0n_osx5NBt75oEyooc2vFLiwkS
 f15jeLj5h3tgVCg_O6JjGIskyuXFDG9UJ4EPkMsrNu4Bw2zWZgxDFU0PK4aUidCM015j4LBkKyzo
 FjODYi8RjPiQPzrtfXFLQdaP9MfLlu7hlEJgE05dJWfqOdA3e0qRdyipupXYMMh3dUWfVqxNuLtF
 eOohWiGjOvWk6gir8zOpRzZDHEmLdlKkdZcjL5RZrm8dYMTPkEFPlAsW5HipQPQ1PL6_yNVNzHPn
 g6MGadp8tfn_Wgq_zmfuySKkkQx6tGZnghJUt.cqsRRhANkk5ZUJtzR6MCmAfV_MUlqItIT_BkwC
 TTx2u3vuCZGHfyLXEYNgXJBrWiJfy_.13.XcqggWQjNn5yV7N5OIDBgqN987BM_wlYUjC_TMgspl
 j6iwLpBlYRWou9OxrB3pb4OAyDmLeJND5AopgwwVJ601BkenoNi.b_7Y.EAJS6.wA9NtZQEMhXPh
 IKYtfahiapZN8B69Su2YYwXI70yorcSP6xOrmez5hvreLWOVNu9yngnJ4ZEnQBvxVIP3Doutx0Q1
 _cY77owvkRKsTxZkQp3eK6446iuusiEZMKV5FvzHyAu2cNeV2ZeyEMcdiyLLpJp.mnM9aX9rz_2B
 UjfRVBDyXH0KP_raZYztQRCrGbMewlCYBFcJc38HeV3DGFyrhQvcgQGPDvW..Awu8DCR1BNMeLfr
 N9ruKhnS79x.jIptR3WFmbOHfdNUMHNtY7qEN56SW6KEAlSGAUDU_H6KJ1N7ayW0YqJAwjW8W7YR
 5VNZ2AVDdt4Tlt.LGocYM8o5XIzFp3kFbrwmP2V4xOQAob6jY5_K_oOIxnxqmcNvNIFIntBtoj6w
 YTDHOUf5vgUxxzkLVx2iMEdbwmt7Vj2o5iuZZnOho.USA7zsuuVqnq1tvHyu3vq_kU._p03LumQl
 eC0ChehVXfX5QbgeleBxzYYBc6VVtoS0Z3RJoxldqnqVhGzqnwHyQOCoKZ1BrA2Y4OBW2xBBsdpA
 4Im8yVytFBdHCeCCTD45CHLz8HEh7XSHalnRWUujx2cQs6m0yTbgPnMmjukhCaD_PLp.iOtuA0GK
 Gxer2FQJvxw3BSpAbLthoZcrCZ4c6EjTA8ObIABCo0rP_WEg5ECaj_j1nfq_8uDVGaF3MQu6WMlt
 RgLoDFPhU..NzuFBJdJCco0JH6by3u4UR0rOUg6pC4P0IydH2bvGtkxSR1bcP2hIOzGyLuFG_Kp2
 NHttdT0eySfM.TZjOfJgvfSPLGuisF4KVR8PzmCBkaHaL3f97sKpgOi82QinlzDruohHkS6Vqu1g
 uBtTFpMNnU8_DgQA.5YYsXGeDmTN77bAMCMJ9pPAohU9ZpRIJn_1BQFLEuY_j6y7zU.QieC4uyJS
 2ZASrtKbby7n1yCq340NhZTlIyD4ArNT_FKdJSo7ep3evdnMRjfIg2ykAczK3Gjf058.GohujLNo
 PwUaE
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic304.consmr.mail.sg3.yahoo.com with HTTP; Thu, 2 Jan 2020 10:59:46 +0000
Received: by smtp422.mail.ne1.yahoo.com (Oath Hermes SMTP Server) with ESMTPA
 ID d2f805ff8ab15b5f93d407b5f1dc55b8; 
 Thu, 02 Jan 2020 10:57:44 +0000 (UTC)
From: Amrita Patole <longlivelinux@yahoo.com>
To: gregkh@linuxfoundation.org, madhumithabiw@gmail.com,
 bhanusreemahesh@gmail.com
Subject: [PATCH] Fixed coding style with minor changes. Signed-off-by: Amrita
 Patole <amritapatole@gmail.com>
Date: Thu,  2 Jan 2020 16:27:18 +0530
Message-Id: <20200102105718.5669-1-longlivelinux@yahoo.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
References: <20200102105718.5669-1-longlivelinux.ref@yahoo.com>
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
Cc: devel@driverdev.osuosl.org, Amrita Patole <longlivelinux@yahoo.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

---
 drivers/staging/fwserial/fwserial.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/fwserial/fwserial.c b/drivers/staging/fwserial/fwserial.c
index aec0f19597a9..df3e21565af5 100644
--- a/drivers/staging/fwserial/fwserial.c
+++ b/drivers/staging/fwserial/fwserial.c
@@ -1212,8 +1212,7 @@ static int wait_msr_change(struct fwtty_port *port, unsigned long mask)
 					check_msr_delta(port, mask, &prev));
 }
 
-static int get_serial_info(struct tty_struct *tty,
-			   struct serial_struct *ss)
+static int get_serial_info(struct tty_struct *tty, struct serial_struct *ss)
 {
 	struct fwtty_port *port = tty->driver_data;
 
@@ -1228,8 +1227,7 @@ static int get_serial_info(struct tty_struct *tty,
 	return 0;
 }
 
-static int set_serial_info(struct tty_struct *tty,
-			   struct serial_struct *ss)
+static int set_serial_info(struct tty_struct *tty, struct serial_struct *ss)
 {
 	struct fwtty_port *port = tty->driver_data;
 
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
