Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A6E1922DD83
	for <lists+driverdev-devel@lfdr.de>; Sun, 26 Jul 2020 11:10:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2270621543;
	Sun, 26 Jul 2020 09:10:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z3x-1xjBgvTz; Sun, 26 Jul 2020 09:10:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id EC57C2152A;
	Sun, 26 Jul 2020 09:10:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 06FA51BF35E
 for <devel@linuxdriverproject.org>; Sun, 26 Jul 2020 09:10:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0372F87A2D
 for <devel@linuxdriverproject.org>; Sun, 26 Jul 2020 09:10:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5JqhJvM4KW6M for <devel@linuxdriverproject.org>;
 Sun, 26 Jul 2020 09:10:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5BD6E87A1A
 for <devel@driverdev.osuosl.org>; Sun, 26 Jul 2020 09:10:06 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id l63so7737980pge.12
 for <devel@driverdev.osuosl.org>; Sun, 26 Jul 2020 02:10:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=W55/l1JBEazK4N5hQv70nA809fQUH8diXh6vKYJ/So8=;
 b=anGHIYncjeMTl4zshsSV/aAmEBzakA5HLMWpVf2oOP/cmPmoqVO0+JVevzweTTS/Do
 ZTp4H0waL/0qoY25GGhzAyn0SJAn104Npl3GeicS62ieinMin6WD7yH/bv7ezEoHmyMn
 6AkNUjwL1WQ/J6paZXKNGb2QxKUcKfX0Y9C81r0eLi7whVlr5YMXUDEUM6AaHtjKxbC6
 qrc9pP3NW2SR4iitA3wWa27Jf75naxGs6LhezEKLMq3hyGQSMd6cuZB5VmOAAGA93B0d
 Mc9ehRp3QsiZKNnhUlt8iZ8t5kmMVMzcHMnnqlczKQ/rmdUx4btc/HHJ/JAm+ZjVazqV
 kQ8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=W55/l1JBEazK4N5hQv70nA809fQUH8diXh6vKYJ/So8=;
 b=EAyf/qSCjgo5rtxjUHMb9KNrarZuGk+b0ECBL0SXxxn8NpfTyDqInwzYV1/32S9KXy
 J/okj/fC1MaWOvDImsvc8jmBxPE+vNU0/MLJbbF06T94AwxKJhMsNwELutYqIBQfsy6k
 WClR7rMGoTzElQChzZuTWcetiywabhClwcRGmmZu5p9pHNLwlKalakIgShBSmoP0hvF5
 VOtfiOBy6a9x+Fb4uiTHi2R6GHS7dlccarP3K8gSwQrxOXchO+gnAsOtdAz3s5fp/gJW
 4EpcO16C4PiGVRnwgczhEQBOyrE86DEDz2w4DbvI24BHeNBdnWw/GUcbWIZRix6Y1hAN
 +Azw==
X-Gm-Message-State: AOAM533RfXuAZKMfrFnklz25ubnM9v7XQPJOR5SLAJHFKNRIxM9vcKGT
 gcoCkERvDmgHd6/qwT1Ex/k=
X-Google-Smtp-Source: ABdhPJxj/1I02FNE8PkSlNSXn49RGOhicLXpFgHxSXLoygrAG4eCmZ92+eOL5yERkeNqP/Ch7pjPUA==
X-Received: by 2002:a63:a06b:: with SMTP id u43mr15118867pgn.294.1595754605977; 
 Sun, 26 Jul 2020 02:10:05 -0700 (PDT)
Received: from localhost.localdomain ([1.186.115.27])
 by smtp.gmail.com with ESMTPSA id a129sm1608215pfd.165.2020.07.26.02.10.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 26 Jul 2020 02:10:05 -0700 (PDT)
From: Rohit K Bharadwaj <bharadwaj.rohit8@gmail.com>
To: mchehab@kernel.org, sakari.ailus@linux.intel.com,
 gregkh@linuxfoundation.org
Subject: [PATCH v3 2/4] staging: media: atomisp: fix style of open brace
Date: Sun, 26 Jul 2020 14:35:12 +0530
Message-Id: <20200726090512.20574-2-bharadwaj.rohit8@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200726062541.11304-1-bharadwaj.rohit8@gmail.com>
References: <20200726062541.11304-1-bharadwaj.rohit8@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Rohit K Bharadwaj <bharadwaj.rohit8@gmail.com>,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

this patch fixes style of open brace after functions and if statements

Signed-off-by: Rohit K Bharadwaj <bharadwaj.rohit8@gmail.com>
---
v3: change patch subject prefix
v2: split patch into sequence of patches 
v1: fix all coding style issues in single patch

 .../media/atomisp/pci/sh_css_firmware.c       | 29 +++++++++----------
 1 file changed, 14 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/sh_css_firmware.c b/drivers/staging/media/atomisp/pci/sh_css_firmware.c
index 2907aead98b7..988785ab6c95 100644
--- a/drivers/staging/media/atomisp/pci/sh_css_firmware.c
+++ b/drivers/staging/media/atomisp/pci/sh_css_firmware.c
@@ -81,7 +81,8 @@ char *sh_css_get_fw_version(void)
 /* Setup sp/sp1 binary */
 static int
 setup_binary(struct ia_css_fw_info *fw, const char *fw_data,
-	     struct ia_css_fw_info *sh_css_fw, unsigned int binary_id) {
+	     struct ia_css_fw_info *sh_css_fw, unsigned int binary_id)
+{
 	const char *blob_data;
 
 	if ((!fw) || (!fw_data))
@@ -105,7 +106,8 @@ setup_binary(struct ia_css_fw_info *fw, const char *fw_data,
 int
 sh_css_load_blob_info(const char *fw, const struct ia_css_fw_info *bi,
 		      struct ia_css_blob_descr *bd,
-		      unsigned int index) {
+		      unsigned int index)
+{
 	const char *name;
 	const unsigned char *blob;
 
@@ -119,8 +121,9 @@ sh_css_load_blob_info(const char *fw, const struct ia_css_fw_info *bi,
 	blob = (const unsigned char *)fw + bi->blob.offset;
 
 	/* sanity check */
-	if (bi->blob.size != bi->blob.text_size + bi->blob.icache_size + bi->blob.data_size + bi->blob.padding_size)
-	{
+	if (bi->blob.size !=
+		bi->blob.text_size + bi->blob.icache_size +
+		bi->blob.data_size + bi->blob.padding_size) {
 		/* sanity check, note the padding bytes added for section to DDR alignment */
 		return -EINVAL;
 	}
@@ -131,21 +134,18 @@ sh_css_load_blob_info(const char *fw, const struct ia_css_fw_info *bi,
 	bd->blob = blob;
 	bd->header = *bi;
 
-	if (bi->type == ia_css_isp_firmware || bi->type == ia_css_sp_firmware)
-	{
+	if (bi->type == ia_css_isp_firmware || bi->type == ia_css_sp_firmware) {
 		char *namebuffer;
 
 		namebuffer = kstrdup(name, GFP_KERNEL);
 		if (!namebuffer)
 			return -ENOMEM;
 		bd->name = fw_minibuffer[index].name = namebuffer;
-	} else
-	{
+	} else {
 		bd->name = name;
 	}
 
-	if (bi->type == ia_css_isp_firmware)
-	{
+	if (bi->type == ia_css_isp_firmware) {
 		size_t paramstruct_size = sizeof(struct ia_css_memory_offsets);
 		size_t configstruct_size = sizeof(struct ia_css_config_memory_offsets);
 		size_t statestruct_size = sizeof(struct ia_css_state_memory_offsets);
@@ -226,7 +226,8 @@ static const char * const fw_acc_type_name[] = {
 
 int
 sh_css_load_firmware(struct device *dev, const char *fw_data,
-		     unsigned int fw_size) {
+		     unsigned int fw_size)
+{
 	unsigned int i;
 	struct ia_css_fw_info *binaries;
 	struct sh_css_fw_bi_file_h *file_header;
@@ -260,8 +261,7 @@ sh_css_load_firmware(struct device *dev, const char *fw_data,
 
 	sh_css_num_binaries = file_header->binary_nr;
 	/* Only allocate memory for ISP blob info */
-	if (sh_css_num_binaries > NUM_OF_SPS)
-	{
+	if (sh_css_num_binaries > NUM_OF_SPS) {
 		sh_css_blob_info = kmalloc(
 		    (sh_css_num_binaries - NUM_OF_SPS) *
 		    sizeof(*sh_css_blob_info), GFP_KERNEL);
@@ -276,8 +276,7 @@ sh_css_load_firmware(struct device *dev, const char *fw_data,
 	if (!fw_minibuffer)
 		return -ENOMEM;
 
-	for (i = 0; i < sh_css_num_binaries; i++)
-	{
+	for (i = 0; i < sh_css_num_binaries; i++) {
 		struct ia_css_fw_info *bi = &binaries[i];
 		/*
 		 * note: the var below is made static as it is quite large;
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
