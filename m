Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 79F4B1E8846
	for <lists+driverdev-devel@lfdr.de>; Fri, 29 May 2020 22:00:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 668B4875B3;
	Fri, 29 May 2020 20:00:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CeqIKN7LfGE0; Fri, 29 May 2020 20:00:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DC48E874C7;
	Fri, 29 May 2020 20:00:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 500331BF5F6
 for <devel@linuxdriverproject.org>; Fri, 29 May 2020 20:00:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 49D6E883DA
 for <devel@linuxdriverproject.org>; Fri, 29 May 2020 20:00:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Pek5OhtQsGR4 for <devel@linuxdriverproject.org>;
 Fri, 29 May 2020 20:00:52 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.24])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E38AC88328
 for <devel@driverdev.osuosl.org>; Fri, 29 May 2020 20:00:51 +0000 (UTC)
Received: from threadripper.lan ([149.172.98.151]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.145]) with ESMTPA (Nemesis) id
 1N3sZy-1iwnQf3ybI-00zltS; Fri, 29 May 2020 22:00:42 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH 7/9] staging: media: atomisp: fix enum type mixups
Date: Fri, 29 May 2020 22:00:29 +0200
Message-Id: <20200529200031.4117841-7-arnd@arndb.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200529200031.4117841-1-arnd@arndb.de>
References: <20200529200031.4117841-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:Oi9GZuwYCtVW0YQN+bXyI0AbOsWHne7iHij3kFt4OBTdybYPLLc
 H1tbAKJGDVUZ/HsQa0IsK0ChzDn9x9fU4h3sHE2M5zUavENXzgppLZMmVaXJw8OgyvWf8JI
 6WLxv0LO1XndxyGT2+tNMSzcBc5pudM+yARQsUzCWMNXsbqpLy5LFNUd51iYNWH5M1XMuyd
 x4l1SpV6NWqnyboGlSK2w==
X-UI-Out-Filterresults: notjunk:1;V03:K0:Iey8Rc3idrk=:R17CteIWPzHogAGPk1oHj2
 Ef9fDUzN7RcPNaW6sLJmU2Xs+zMyOjV0Yi2Rm6e9hOJsxxSwz6p3nF0I1uqsJphWUNwjZ5VFq
 cGBRzn9WDHR4MSsXIyVXGbPM5VHX7gRM8FeUxu81KrIwXXEuiD5JHweTfRLdlm/a+8XO1f9pX
 IHrvVNBArScrA2uLz6vrjnJzdPI6bM1eACaJnn/LjxuRiinFSalnndz0ed39CLMJX5iKHlzsd
 dGA2cupAXce2lpCk7UQB5r2RJtVprgpO3JYpUGppuuHLwr0ClY2F+UH+mS5zdub7M+MEJhBU4
 ubSfRC+2iR2pXRFD4DxvMp+mVZrUH3X8+3YluC4oCC7orAFJZmArPNOIa5wjhufII/+BHgR/7
 gKW4RUhD1AquC5HQ4QQWq+uGyqDyjCG6G809Z7LmGYrzuaYmw/cKs5RZQnc4nkl8RO6IoTA1p
 dlzfyWYWzYYKBsrRyZZ/3Oq7Xkxj0brEtxLfpZmM6m4rhKx24bRkKrt0iAf9uNfMPnoyG8jSQ
 pcE8IBgbsu//iK333FfoLHYzqsRVpBqems8d90rwo1wRUKHk6Dziw2EZ3cm6K26OZcWQCDZ8T
 8C3c5a9jV7LDkWUSFBfAHenQKFl0tnPbPcDtNqYxhYYthptPMcnNxRxscHftceodQhl3bC6L9
 HcnxTel/SZ+jZs4Qt2XdlV9gZrGUJtMXXeEtYRMQ1h9p73p4/+a4XSlSh4alXgbnHDzbJ3yjb
 w67r9wWYFhXQYPwO9+nn3zEMuMnGYyNjYqMaJrzi93icSQhIYIRAjQb0VutuIsPYC8OUwACDc
 nAIbKVkBQ8scTOAeuXWvnyk94XHy1BVHXzrodpMYzYwVNvLrKk=
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
Cc: devel@driverdev.osuosl.org, Arnd Bergmann <arnd@arndb.de>,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
 Sakari Ailus <sakari.ailus@linux.intel.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Some function calls pass an incorrect enum type:

drivers/staging/media/atomisp/pci/hive_isp_css_common/host/input_system.c:858:16: error: implicit conversion from enumeration type 'input_system_ID_t' to different enumeration type 'gp_device_ID_t' [-Werror,-Wenum-conversion]
        gp_device_rst(INPUT_SYSTEM0_ID);
        ~~~~~~~~~~~~~ ^~~~~~~~~~~~~~~~
drivers/staging/media/atomisp/pci/hive_isp_css_common/host/input_system.c:860:19: error: implicit conversion from enumeration type 'input_system_ID_t' to different enumeration type 'gp_device_ID_t' [-Werror,-Wenum-conversion]
        input_switch_rst(INPUT_SYSTEM0_ID);
        ~~~~~~~~~~~~~~~~ ^~~~~~~~~~~~~~~~
drivers/staging/media/atomisp/pci/hive_isp_css_common/host/input_system.c:876:27: error: implicit conversion from enumeration type 'input_system_cfg_flag_t' to different enumeration type 'input_system_connection_t' [-Werror,-Wenum-conversion]
                config.multicast[i]              = INPUT_SYSTEM_CFG_FLAG_RESET;
                                                 ~ ^~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/staging/media/atomisp/pci/hive_isp_css_common/host/input_system.c:1326:32: error: implicit conversion from enumeration type 'input_system_ID_t' to different enumeration type 'gp_device_ID_t' [-Werror,-Wenum-conversion]
        input_selector_cfg_for_sensor(INPUT_SYSTEM0_ID);
        ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^~~~~~~~~~~~~~~~
drivers/staging/media/atomisp/pci/hive_isp_css_common/host/input_system.c:1329:19: error: implicit conversion from enumeration type 'input_system_ID_t' to different enumeration type 'gp_device_ID_t' [-Werror,-Wenum-conversion]
        input_switch_cfg(INPUT_SYSTEM0_ID, &config.input_switch_cfg);
        ~~~~~~~~~~~~~~~~ ^~~~~~~~~~~~~~~~

INPUT_SYSTEM0_ID is zero, so use the corresponding zero-value
of the expected types instead.

Fixes: a49d25364dfb ("staging/atomisp: Add support for the Intel IPU v2")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 .../pci/hive_isp_css_common/host/input_system.c        | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/input_system.c b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/input_system.c
index 2114cf4f3fda..aa0f0fca9346 100644
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/input_system.c
+++ b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/input_system.c
@@ -855,9 +855,9 @@ input_system_error_t input_system_configuration_reset(void)
 
 	input_system_network_rst(INPUT_SYSTEM0_ID);
 
-	gp_device_rst(INPUT_SYSTEM0_ID);
+	gp_device_rst(GP_DEVICE0_ID);
 
-	input_switch_rst(INPUT_SYSTEM0_ID);
+	input_switch_rst(GP_DEVICE0_ID);
 
 	//target_rst();
 
@@ -873,7 +873,7 @@ input_system_error_t input_system_configuration_reset(void)
 
 	for (i = 0; i < N_CSI_PORTS; i++) {
 		config.csi_buffer_flags[i]	 = INPUT_SYSTEM_CFG_FLAG_RESET;
-		config.multicast[i]		 = INPUT_SYSTEM_CFG_FLAG_RESET;
+		config.multicast[i]		 = INPUT_SYSTEM_DISCARD_ALL;
 	}
 
 	config.source_type_flags				 = INPUT_SYSTEM_CFG_FLAG_RESET;
@@ -1323,10 +1323,10 @@ static input_system_error_t configuration_to_registers(void)
 	} // end of switch (source_type)
 
 	// Set input selector.
-	input_selector_cfg_for_sensor(INPUT_SYSTEM0_ID);
+	input_selector_cfg_for_sensor(GP_DEVICE0_ID);
 
 	// Set input switch.
-	input_switch_cfg(INPUT_SYSTEM0_ID, &config.input_switch_cfg);
+	input_switch_cfg(GP_DEVICE0_ID, &config.input_switch_cfg);
 
 	// Set input formatters.
 	// AM: IF are set dynamically.
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
