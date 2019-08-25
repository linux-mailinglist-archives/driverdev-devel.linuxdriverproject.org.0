Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AC3D69C22A
	for <lists+driverdev-devel@lfdr.de>; Sun, 25 Aug 2019 07:55:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 278058675F;
	Sun, 25 Aug 2019 05:55:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3gQN0vdcKLN2; Sun, 25 Aug 2019 05:55:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A0333865B0;
	Sun, 25 Aug 2019 05:55:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AFB4E1BF5A7
 for <devel@linuxdriverproject.org>; Sun, 25 Aug 2019 05:55:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id ACAE5865AB
 for <devel@linuxdriverproject.org>; Sun, 25 Aug 2019 05:55:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9qg1FhKL0TTM for <devel@linuxdriverproject.org>;
 Sun, 25 Aug 2019 05:55:03 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E2E3886581
 for <devel@driverdev.osuosl.org>; Sun, 25 Aug 2019 05:55:03 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 41B6B21848;
 Sun, 25 Aug 2019 05:55:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566712503;
 bh=6SR9gaVqFwRvUhukFwgkAst5fu/Qlhy9PQMt1ZCkCq0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=DTzyttXBMaPw8mWA6JcmQOcb8GmlqoiNg4gYZ1r+rDro3NE5sVFica4VxC7SyID27
 /k2aF6QbcuM4wzhVAHwOcF+VE4jBKeMTsItwQj5jesWSg3lmn+xRhHEivbUqZxGDPy
 7mO6VarNROPO3bRqBBnMIoS0onRiFTBh1XoiEdk4=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: devel@driverdev.osuosl.org, greybus-dev@lists.linaro.org, elder@kernel.org,
 johan@kernel.org
Subject: [PATCH 4/9] staging: greybus: manifest: Fix up some alignment
 checkpatch issues
Date: Sun, 25 Aug 2019 07:54:24 +0200
Message-Id: <20190825055429.18547-5-gregkh@linuxfoundation.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190825055429.18547-1-gregkh@linuxfoundation.org>
References: <20190825055429.18547-1-gregkh@linuxfoundation.org>
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Some function prototypes do not match the expected alignment formatting
so fix that up so that checkpatch is happy.

Cc: Johan Hovold <johan@kernel.org>
Cc: Alex Elder <elder@kernel.org>
Cc: greybus-dev@lists.linaro.org
Cc: devel@driverdev.osuosl.org
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/staging/greybus/manifest.c | 39 +++++++++++++++---------------
 1 file changed, 19 insertions(+), 20 deletions(-)

diff --git a/drivers/staging/greybus/manifest.c b/drivers/staging/greybus/manifest.c
index 08db49264f2b..4ebbba52b07c 100644
--- a/drivers/staging/greybus/manifest.c
+++ b/drivers/staging/greybus/manifest.c
@@ -104,15 +104,15 @@ static int identify_descriptor(struct gb_interface *intf,
 	size_t expected_size;
 
 	if (size < sizeof(*desc_header)) {
-		dev_err(&intf->dev, "manifest too small (%zu < %zu)\n",
-				size, sizeof(*desc_header));
+		dev_err(&intf->dev, "manifest too small (%zu < %zu)\n", size,
+			sizeof(*desc_header));
 		return -EINVAL;		/* Must at least have header */
 	}
 
 	desc_size = le16_to_cpu(desc_header->size);
 	if (desc_size > size) {
 		dev_err(&intf->dev, "descriptor too big (%zu > %zu)\n",
-				desc_size, size);
+			desc_size, size);
 		return -EINVAL;
 	}
 
@@ -139,22 +139,22 @@ static int identify_descriptor(struct gb_interface *intf,
 	case GREYBUS_TYPE_INVALID:
 	default:
 		dev_err(&intf->dev, "invalid descriptor type (%u)\n",
-				desc_header->type);
+			desc_header->type);
 		return -EINVAL;
 	}
 
 	if (desc_size < expected_size) {
 		dev_err(&intf->dev, "%s descriptor too small (%zu < %zu)\n",
-				get_descriptor_type_string(desc_header->type),
-				desc_size, expected_size);
+			get_descriptor_type_string(desc_header->type),
+			desc_size, expected_size);
 		return -EINVAL;
 	}
 
 	/* Descriptor bigger than what we expect */
 	if (desc_size > expected_size) {
 		dev_warn(&intf->dev, "%s descriptor size mismatch (want %zu got %zu)\n",
-				get_descriptor_type_string(desc_header->type),
-				expected_size, desc_size);
+			 get_descriptor_type_string(desc_header->type),
+			 expected_size, desc_size);
 	}
 
 	descriptor = kzalloc(sizeof(*descriptor), GFP_KERNEL);
@@ -208,7 +208,7 @@ static char *gb_string_get(struct gb_interface *intf, u8 string_id)
 
 	/* Allocate an extra byte so we can guarantee it's NUL-terminated */
 	string = kmemdup(&desc_string->string, desc_string->length + 1,
-				GFP_KERNEL);
+			 GFP_KERNEL);
 	if (!string)
 		return ERR_PTR(-ENOMEM);
 	string[desc_string->length] = '\0';
@@ -264,8 +264,7 @@ static u32 gb_manifest_parse_cports(struct gb_bundle *bundle)
 			desc_cport = tmp->data;
 			if (cport_id == le16_to_cpu(desc_cport->id)) {
 				dev_err(&bundle->dev,
-						"duplicate CPort %u found\n",
-						cport_id);
+					"duplicate CPort %u found\n", cport_id);
 				goto exit;
 			}
 		}
@@ -277,7 +276,7 @@ static u32 gb_manifest_parse_cports(struct gb_bundle *bundle)
 		return 0;
 
 	bundle->cport_desc = kcalloc(count, sizeof(*bundle->cport_desc),
-					GFP_KERNEL);
+				     GFP_KERNEL);
 	if (!bundle->cport_desc)
 		goto exit;
 
@@ -287,7 +286,7 @@ static u32 gb_manifest_parse_cports(struct gb_bundle *bundle)
 	list_for_each_entry_safe(desc, next, &list, links) {
 		desc_cport = desc->data;
 		memcpy(&bundle->cport_desc[i++], desc_cport,
-				sizeof(*desc_cport));
+		       sizeof(*desc_cport));
 
 		/* Release the cport descriptor */
 		release_manifest_descriptor(desc);
@@ -333,9 +332,9 @@ static u32 gb_manifest_parse_bundles(struct gb_interface *intf)
 		/* Ignore any legacy control bundles */
 		if (bundle_id == GB_CONTROL_BUNDLE_ID) {
 			dev_dbg(&intf->dev, "%s - ignoring control bundle\n",
-					__func__);
+				__func__);
 			release_cport_descriptors(&intf->manifest_descs,
-								bundle_id);
+						  bundle_id);
 			continue;
 		}
 
@@ -468,7 +467,7 @@ bool gb_manifest_parse(struct gb_interface *intf, void *data, size_t size)
 	/* we have to have at _least_ the manifest header */
 	if (size < sizeof(*header)) {
 		dev_err(&intf->dev, "short manifest (%zu < %zu)\n",
-				size, sizeof(*header));
+			size, sizeof(*header));
 		return false;
 	}
 
@@ -478,15 +477,15 @@ bool gb_manifest_parse(struct gb_interface *intf, void *data, size_t size)
 	manifest_size = le16_to_cpu(header->size);
 	if (manifest_size != size) {
 		dev_err(&intf->dev, "manifest size mismatch (%zu != %u)\n",
-				size, manifest_size);
+			size, manifest_size);
 		return false;
 	}
 
 	/* Validate major/minor number */
 	if (header->version_major > GREYBUS_VERSION_MAJOR) {
 		dev_err(&intf->dev, "manifest version too new (%u.%u > %u.%u)\n",
-				header->version_major, header->version_minor,
-				GREYBUS_VERSION_MAJOR, GREYBUS_VERSION_MINOR);
+			header->version_major, header->version_minor,
+			GREYBUS_VERSION_MAJOR, GREYBUS_VERSION_MINOR);
 		return false;
 	}
 
@@ -513,7 +512,7 @@ bool gb_manifest_parse(struct gb_interface *intf, void *data, size_t size)
 	}
 	if (found != 1) {
 		dev_err(&intf->dev, "manifest must have 1 interface descriptor (%u found)\n",
-				found);
+			found);
 		result = false;
 		goto out;
 	}
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
