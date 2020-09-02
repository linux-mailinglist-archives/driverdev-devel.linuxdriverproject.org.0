Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7751525B0D1
	for <lists+driverdev-devel@lfdr.de>; Wed,  2 Sep 2020 18:11:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3309F85551;
	Wed,  2 Sep 2020 16:11:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5z1M0Bre6oZy; Wed,  2 Sep 2020 16:11:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6BBD786A95;
	Wed,  2 Sep 2020 16:11:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9E0661BF3D4
 for <devel@linuxdriverproject.org>; Wed,  2 Sep 2020 16:10:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9A7F1857C2
 for <devel@linuxdriverproject.org>; Wed,  2 Sep 2020 16:10:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Gdx5zzHbqQQR for <devel@linuxdriverproject.org>;
 Wed,  2 Sep 2020 16:10:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D6D4D857CB
 for <devel@driverdev.osuosl.org>; Wed,  2 Sep 2020 16:10:46 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5c3.dynamic.kabel-deutschland.de
 [95.90.213.195])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6C8C721D92;
 Wed,  2 Sep 2020 16:10:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1599063046;
 bh=CS2SHY+dbcTlueJOlO3filVCadd3G4vfWcrT58KY7cQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=jHGC0erCkaJGvX12SWypynDoBZOLIMbuVWaaScNFhFHMv48SY5hkqjCqX0zhCtIxg
 c1gZijHBzZt0PgYI+G6pleRLU5sttlfilhnGfZHCpasPmqk7UxHAoAVQ+F+TgAHUdP
 XxZalMJxnQPIAd15tldkjWhtZC3hSU2KQhspaAuU=
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1kDVLQ-000tB5-JX; Wed, 02 Sep 2020 18:10:44 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Subject: [PATCH 29/38] media: atomisp: get rid of ibuf_ctrl abstraction
Date: Wed,  2 Sep 2020 18:10:32 +0200
Message-Id: <d10ebdd12ff59bdd70652e8dc4fc8bdfe0ce9bf5.1599062230.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1599062230.git.mchehab+huawei@kernel.org>
References: <cover.1599062230.git.mchehab+huawei@kernel.org>
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
Cc: devel@driverdev.osuosl.org,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Sakari Ailus <sakari.ailus@linux.intel.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Just move the stuff there to the places where this header is
included.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 .../css_2401_system/host/ibuf_ctrl_local.h    |   1 +
 .../css_2401_system/host/ibuf_ctrl_private.h  | 268 ------------------
 .../host/ibuf_ctrl_public.h                   |  94 ------
 .../pci/hive_isp_css_include/ibuf_ctrl.h      |  47 ---
 .../atomisp/pci/isp2401_input_system_global.h |   2 +-
 .../atomisp/pci/isp2401_input_system_local.h  |   1 -
 .../pci/isp2401_input_system_private.h        | 224 ++++++++++++++-
 7 files changed, 220 insertions(+), 417 deletions(-)
 delete mode 100644 drivers/staging/media/atomisp/pci/css_2401_system/host/ibuf_ctrl_private.h
 delete mode 100644 drivers/staging/media/atomisp/pci/hive_isp_css_include/host/ibuf_ctrl_public.h
 delete mode 100644 drivers/staging/media/atomisp/pci/hive_isp_css_include/ibuf_ctrl.h

diff --git a/drivers/staging/media/atomisp/pci/css_2401_system/host/ibuf_ctrl_local.h b/drivers/staging/media/atomisp/pci/css_2401_system/host/ibuf_ctrl_local.h
index 4952b42d8191..f71841195ac1 100644
--- a/drivers/staging/media/atomisp/pci/css_2401_system/host/ibuf_ctrl_local.h
+++ b/drivers/staging/media/atomisp/pci/css_2401_system/host/ibuf_ctrl_local.h
@@ -17,6 +17,7 @@
 #define __IBUF_CTRL_LOCAL_H_INCLUDED__
 
 #include "ibuf_ctrl_global.h"
+#include "ibuf_ctrl_local.h"
 
 typedef struct ibuf_ctrl_proc_state_s	ibuf_ctrl_proc_state_t;
 typedef struct ibuf_ctrl_state_s		ibuf_ctrl_state_t;
diff --git a/drivers/staging/media/atomisp/pci/css_2401_system/host/ibuf_ctrl_private.h b/drivers/staging/media/atomisp/pci/css_2401_system/host/ibuf_ctrl_private.h
deleted file mode 100644
index a58e8477da6e..000000000000
--- a/drivers/staging/media/atomisp/pci/css_2401_system/host/ibuf_ctrl_private.h
+++ /dev/null
@@ -1,268 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 */
-/*
- * Support for Intel Camera Imaging ISP subsystem.
- * Copyright (c) 2015, Intel Corporation.
- *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms and conditions of the GNU General Public License,
- * version 2, as published by the Free Software Foundation.
- *
- * This program is distributed in the hope it will be useful, but WITHOUT
- * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
- * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
- * more details.
- */
-
-#ifndef __IBUF_CTRL_PRIVATE_H_INCLUDED__
-#define __IBUF_CTRL_PRIVATE_H_INCLUDED__
-
-#include "ibuf_ctrl_public.h"
-
-#include "device_access.h"	/* ia_css_device_load_uint32 */
-
-#include "assert_support.h" /* assert */
-#include "print_support.h" /* print */
-
-/*****************************************************
- *
- * Native command interface (NCI).
- *
- *****************************************************/
-/**
- * @brief Get the ibuf-controller state.
- * Refer to "ibuf_ctrl_public.h" for details.
- */
-STORAGE_CLASS_IBUF_CTRL_C void ibuf_ctrl_get_state(
-    const ibuf_ctrl_ID_t ID,
-    ibuf_ctrl_state_t *state)
-{
-	u32 i;
-
-	state->recalc_words =
-	    ibuf_ctrl_reg_load(ID, _IBUF_CNTRL_RECALC_WORDS_STATUS);
-	state->arbiters =
-	    ibuf_ctrl_reg_load(ID, _IBUF_CNTRL_ARBITERS_STATUS);
-
-	/*
-	 * Get the values of the register-set per
-	 * ibuf-controller process.
-	 */
-	for (i = 0; i < N_IBUF_CTRL_PROCS[ID]; i++) {
-		ibuf_ctrl_get_proc_state(
-		    ID,
-		    i,
-		    &state->proc_state[i]);
-	}
-}
-
-/**
- * @brief Get the state of the ibuf-controller process.
- * Refer to "ibuf_ctrl_public.h" for details.
- */
-STORAGE_CLASS_IBUF_CTRL_C void ibuf_ctrl_get_proc_state(
-    const ibuf_ctrl_ID_t ID,
-    const u32 proc_id,
-    ibuf_ctrl_proc_state_t	*state)
-{
-	hrt_address reg_bank_offset;
-
-	reg_bank_offset =
-	    _IBUF_CNTRL_PROC_REG_ALIGN * (1 + proc_id);
-
-	state->num_items =
-	    ibuf_ctrl_reg_load(ID, reg_bank_offset + _IBUF_CNTRL_NUM_ITEMS_PER_STORE);
-
-	state->num_stores =
-	    ibuf_ctrl_reg_load(ID, reg_bank_offset + _IBUF_CNTRL_NUM_STORES_PER_FRAME);
-
-	state->dma_channel =
-	    ibuf_ctrl_reg_load(ID, reg_bank_offset + _IBUF_CNTRL_DMA_CHANNEL);
-
-	state->dma_command =
-	    ibuf_ctrl_reg_load(ID, reg_bank_offset + _IBUF_CNTRL_DMA_CMD);
-
-	state->ibuf_st_addr =
-	    ibuf_ctrl_reg_load(ID, reg_bank_offset + _IBUF_CNTRL_BUFFER_START_ADDRESS);
-
-	state->ibuf_stride =
-	    ibuf_ctrl_reg_load(ID, reg_bank_offset + _IBUF_CNTRL_BUFFER_STRIDE);
-
-	state->ibuf_end_addr =
-	    ibuf_ctrl_reg_load(ID, reg_bank_offset + _IBUF_CNTRL_BUFFER_END_ADDRESS);
-
-	state->dest_st_addr =
-	    ibuf_ctrl_reg_load(ID, reg_bank_offset + _IBUF_CNTRL_DEST_START_ADDRESS);
-
-	state->dest_stride =
-	    ibuf_ctrl_reg_load(ID, reg_bank_offset + _IBUF_CNTRL_DEST_STRIDE);
-
-	state->dest_end_addr =
-	    ibuf_ctrl_reg_load(ID, reg_bank_offset + _IBUF_CNTRL_DEST_END_ADDRESS);
-
-	state->sync_frame =
-	    ibuf_ctrl_reg_load(ID, reg_bank_offset + _IBUF_CNTRL_SYNC_FRAME);
-
-	state->sync_command =
-	    ibuf_ctrl_reg_load(ID, reg_bank_offset + _IBUF_CNTRL_STR2MMIO_SYNC_CMD);
-
-	state->store_command =
-	    ibuf_ctrl_reg_load(ID, reg_bank_offset + _IBUF_CNTRL_STR2MMIO_STORE_CMD);
-
-	state->shift_returned_items =
-	    ibuf_ctrl_reg_load(ID, reg_bank_offset + _IBUF_CNTRL_SHIFT_ITEMS);
-
-	state->elems_ibuf =
-	    ibuf_ctrl_reg_load(ID, reg_bank_offset + _IBUF_CNTRL_ELEMS_P_WORD_IBUF);
-
-	state->elems_dest =
-	    ibuf_ctrl_reg_load(ID, reg_bank_offset + _IBUF_CNTRL_ELEMS_P_WORD_DEST);
-
-	state->cur_stores =
-	    ibuf_ctrl_reg_load(ID, reg_bank_offset + _IBUF_CNTRL_CUR_STORES);
-
-	state->cur_acks =
-	    ibuf_ctrl_reg_load(ID, reg_bank_offset + _IBUF_CNTRL_CUR_ACKS);
-
-	state->cur_s2m_ibuf_addr =
-	    ibuf_ctrl_reg_load(ID, reg_bank_offset + _IBUF_CNTRL_CUR_S2M_IBUF_ADDR);
-
-	state->cur_dma_ibuf_addr =
-	    ibuf_ctrl_reg_load(ID, reg_bank_offset + _IBUF_CNTRL_CUR_DMA_IBUF_ADDR);
-
-	state->cur_dma_dest_addr =
-	    ibuf_ctrl_reg_load(ID, reg_bank_offset + _IBUF_CNTRL_CUR_DMA_DEST_ADDR);
-
-	state->cur_isp_dest_addr =
-	    ibuf_ctrl_reg_load(ID, reg_bank_offset + _IBUF_CNTRL_CUR_ISP_DEST_ADDR);
-
-	state->dma_cmds_send =
-	    ibuf_ctrl_reg_load(ID, reg_bank_offset + _IBUF_CNTRL_CUR_NR_DMA_CMDS_SEND);
-
-	state->main_cntrl_state =
-	    ibuf_ctrl_reg_load(ID, reg_bank_offset + _IBUF_CNTRL_MAIN_CNTRL_STATE);
-
-	state->dma_sync_state =
-	    ibuf_ctrl_reg_load(ID, reg_bank_offset + _IBUF_CNTRL_DMA_SYNC_STATE);
-
-	state->isp_sync_state =
-	    ibuf_ctrl_reg_load(ID, reg_bank_offset + _IBUF_CNTRL_ISP_SYNC_STATE);
-}
-
-/**
- * @brief Dump the ibuf-controller state.
- * Refer to "ibuf_ctrl_public.h" for details.
- */
-STORAGE_CLASS_IBUF_CTRL_C void ibuf_ctrl_dump_state(
-    const ibuf_ctrl_ID_t ID,
-    ibuf_ctrl_state_t *state)
-{
-	u32 i;
-
-	ia_css_print("IBUF controller ID %d recalculate words 0x%x\n", ID,
-		     state->recalc_words);
-	ia_css_print("IBUF controller ID %d arbiters 0x%x\n", ID, state->arbiters);
-
-	/*
-	 * Dump the values of the register-set per
-	 * ibuf-controller process.
-	 */
-	for (i = 0; i < N_IBUF_CTRL_PROCS[ID]; i++) {
-		ia_css_print("IBUF controller ID %d Process ID %d num_items 0x%x\n", ID, i,
-			     state->proc_state[i].num_items);
-		ia_css_print("IBUF controller ID %d Process ID %d num_stores 0x%x\n", ID, i,
-			     state->proc_state[i].num_stores);
-		ia_css_print("IBUF controller ID %d Process ID %d dma_channel 0x%x\n", ID, i,
-			     state->proc_state[i].dma_channel);
-		ia_css_print("IBUF controller ID %d Process ID %d dma_command 0x%x\n", ID, i,
-			     state->proc_state[i].dma_command);
-		ia_css_print("IBUF controller ID %d Process ID %d ibuf_st_addr 0x%x\n", ID, i,
-			     state->proc_state[i].ibuf_st_addr);
-		ia_css_print("IBUF controller ID %d Process ID %d ibuf_stride 0x%x\n", ID, i,
-			     state->proc_state[i].ibuf_stride);
-		ia_css_print("IBUF controller ID %d Process ID %d ibuf_end_addr 0x%x\n", ID, i,
-			     state->proc_state[i].ibuf_end_addr);
-		ia_css_print("IBUF controller ID %d Process ID %d dest_st_addr 0x%x\n", ID, i,
-			     state->proc_state[i].dest_st_addr);
-		ia_css_print("IBUF controller ID %d Process ID %d dest_stride 0x%x\n", ID, i,
-			     state->proc_state[i].dest_stride);
-		ia_css_print("IBUF controller ID %d Process ID %d dest_end_addr 0x%x\n", ID, i,
-			     state->proc_state[i].dest_end_addr);
-		ia_css_print("IBUF controller ID %d Process ID %d sync_frame 0x%x\n", ID, i,
-			     state->proc_state[i].sync_frame);
-		ia_css_print("IBUF controller ID %d Process ID %d sync_command 0x%x\n", ID, i,
-			     state->proc_state[i].sync_command);
-		ia_css_print("IBUF controller ID %d Process ID %d store_command 0x%x\n", ID, i,
-			     state->proc_state[i].store_command);
-		ia_css_print("IBUF controller ID %d Process ID %d shift_returned_items 0x%x\n",
-			     ID, i,
-			     state->proc_state[i].shift_returned_items);
-		ia_css_print("IBUF controller ID %d Process ID %d elems_ibuf 0x%x\n", ID, i,
-			     state->proc_state[i].elems_ibuf);
-		ia_css_print("IBUF controller ID %d Process ID %d elems_dest 0x%x\n", ID, i,
-			     state->proc_state[i].elems_dest);
-		ia_css_print("IBUF controller ID %d Process ID %d cur_stores 0x%x\n", ID, i,
-			     state->proc_state[i].cur_stores);
-		ia_css_print("IBUF controller ID %d Process ID %d cur_acks 0x%x\n", ID, i,
-			     state->proc_state[i].cur_acks);
-		ia_css_print("IBUF controller ID %d Process ID %d cur_s2m_ibuf_addr 0x%x\n", ID,
-			     i,
-			     state->proc_state[i].cur_s2m_ibuf_addr);
-		ia_css_print("IBUF controller ID %d Process ID %d cur_dma_ibuf_addr 0x%x\n", ID,
-			     i,
-			     state->proc_state[i].cur_dma_ibuf_addr);
-		ia_css_print("IBUF controller ID %d Process ID %d cur_dma_dest_addr 0x%x\n", ID,
-			     i,
-			     state->proc_state[i].cur_dma_dest_addr);
-		ia_css_print("IBUF controller ID %d Process ID %d cur_isp_dest_addr 0x%x\n", ID,
-			     i,
-			     state->proc_state[i].cur_isp_dest_addr);
-		ia_css_print("IBUF controller ID %d Process ID %d dma_cmds_send 0x%x\n", ID, i,
-			     state->proc_state[i].dma_cmds_send);
-		ia_css_print("IBUF controller ID %d Process ID %d main_cntrl_state 0x%x\n", ID,
-			     i,
-			     state->proc_state[i].main_cntrl_state);
-		ia_css_print("IBUF controller ID %d Process ID %d dma_sync_state 0x%x\n", ID, i,
-			     state->proc_state[i].dma_sync_state);
-		ia_css_print("IBUF controller ID %d Process ID %d isp_sync_state 0x%x\n", ID, i,
-			     state->proc_state[i].isp_sync_state);
-	}
-}
-
-/* end of NCI */
-
-/*****************************************************
- *
- * Device level interface (DLI).
- *
- *****************************************************/
-/**
- * @brief Load the register value.
- * Refer to "ibuf_ctrl_public.h" for details.
- */
-STORAGE_CLASS_IBUF_CTRL_C hrt_data ibuf_ctrl_reg_load(
-    const ibuf_ctrl_ID_t ID,
-    const hrt_address reg)
-{
-	assert(ID < N_IBUF_CTRL_ID);
-	assert(IBUF_CTRL_BASE[ID] != (hrt_address)-1);
-	return ia_css_device_load_uint32(IBUF_CTRL_BASE[ID] + reg * sizeof(hrt_data));
-}
-
-/**
- * @brief Store a value to the register.
- * Refer to "ibuf_ctrl_public.h" for details.
- */
-STORAGE_CLASS_IBUF_CTRL_C void ibuf_ctrl_reg_store(
-    const ibuf_ctrl_ID_t ID,
-    const hrt_address reg,
-    const hrt_data value)
-{
-	assert(ID < N_IBUF_CTRL_ID);
-	assert(IBUF_CTRL_BASE[ID] != (hrt_address)-1);
-
-	ia_css_device_store_uint32(IBUF_CTRL_BASE[ID] + reg * sizeof(hrt_data), value);
-}
-
-/* end of DLI */
-
-#endif /* __IBUF_CTRL_PRIVATE_H_INCLUDED__ */
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/ibuf_ctrl_public.h b/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/ibuf_ctrl_public.h
deleted file mode 100644
index 54982b15d9a9..000000000000
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_include/host/ibuf_ctrl_public.h
+++ /dev/null
@@ -1,94 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 */
-/*
- * Support for Intel Camera Imaging ISP subsystem.
- * Copyright (c) 2015, Intel Corporation.
- *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms and conditions of the GNU General Public License,
- * version 2, as published by the Free Software Foundation.
- *
- * This program is distributed in the hope it will be useful, but WITHOUT
- * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
- * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
- * more details.
- */
-
-#ifndef __IBUF_CTRL_PUBLIC_H_INCLUDED__
-#define __IBUF_CTRL_PUBLIC_H_INCLUDED__
-
-#ifdef ISP2401
-/*****************************************************
- *
- * Native command interface (NCI).
- *
- *****************************************************/
-/**
- * @brief Get the ibuf-controller state.
- * Get the state of the ibuf-controller regiester-set.
- *
- * @param[in]	id		The global unique ID of the input-buffer controller.
- * @param[out]	state	Point to the register-state.
- */
-STORAGE_CLASS_IBUF_CTRL_H void ibuf_ctrl_get_state(
-    const ibuf_ctrl_ID_t ID,
-    ibuf_ctrl_state_t *state);
-
-/**
- * @brief Get the state of the ibuf-controller process.
- * Get the state of the register set per buf-controller process.
- *
- * @param[in]	id			The global unique ID of the input-buffer controller.
- * @param[in]	proc_id		The process ID.
- * @param[out]	state		Point to the process state.
- */
-STORAGE_CLASS_IBUF_CTRL_H void ibuf_ctrl_get_proc_state(
-    const ibuf_ctrl_ID_t ID,
-    const u32 proc_id,
-    ibuf_ctrl_proc_state_t *state);
-/**
- * @brief Dump the ibuf-controller state.
- * Dump the state of the ibuf-controller regiester-set.
- *
- * @param[in]	id		The global unique ID of the input-buffer controller.
- * @param[in]	state		Pointer to the register-state.
- */
-STORAGE_CLASS_IBUF_CTRL_H void ibuf_ctrl_dump_state(
-    const ibuf_ctrl_ID_t ID,
-    ibuf_ctrl_state_t *state);
-/* end of NCI */
-
-/*****************************************************
- *
- * Device level interface (DLI).
- *
- *****************************************************/
-/**
- * @brief Load the register value.
- * Load the value of the register of the ibuf-controller.
- *
- * @param[in]	ID	The global unique ID for the ibuf-controller instance.
- * @param[in]	reg	The offset address of the register.
- *
- * @return the value of the register.
- */
-STORAGE_CLASS_IBUF_CTRL_H hrt_data ibuf_ctrl_reg_load(
-    const ibuf_ctrl_ID_t ID,
-    const hrt_address reg);
-
-/**
- * @brief Store a value to the register.
- * Store a value to the registe of the ibuf-controller.
- *
- * @param[in]	ID		The global unique ID for the ibuf-controller instance.
- * @param[in]	reg		The offset address of the register.
- * @param[in]	value	The value to be stored.
- *
- */
-STORAGE_CLASS_IBUF_CTRL_H void ibuf_ctrl_reg_store(
-    const ibuf_ctrl_ID_t ID,
-    const hrt_address reg,
-    const hrt_data value);
-/* end of DLI */
-
-#endif /* ISP2401 */
-#endif /* __IBUF_CTRL_PUBLIC_H_INCLUDED__ */
diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_include/ibuf_ctrl.h b/drivers/staging/media/atomisp/pci/hive_isp_css_include/ibuf_ctrl.h
deleted file mode 100644
index 218341041811..000000000000
--- a/drivers/staging/media/atomisp/pci/hive_isp_css_include/ibuf_ctrl.h
+++ /dev/null
@@ -1,47 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 */
-/*
- * Support for Intel Camera Imaging ISP subsystem.
- * Copyright (c) 2015, Intel Corporation.
- *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms and conditions of the GNU General Public License,
- * version 2, as published by the Free Software Foundation.
- *
- * This program is distributed in the hope it will be useful, but WITHOUT
- * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
- * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
- * more details.
- */
-
-#ifndef __IBUF_CTRL_H_INCLUDED__
-#define __IBUF_CTRL_H_INCLUDED__
-
-/*
- * This file is included on every cell {SP,ISP,host} and on every system
- * that uses the input system device(s). It defines the API to DLI bridge
- *
- * System and cell specific interfaces and inline code are included
- * conditionally through Makefile path settings.
- *
- * - system and cell agnostic interfaces, constants and identifiers
- * - public:  system agnostic, cell specific interfaces
- * - private: system dependent, cell specific interfaces &
- *   inline implementations
- * - global:  system specific constants and identifiers
- * - local:   system and cell specific constants and identifiers
- */
-
-#include "system_local.h"
-#include "ibuf_ctrl_local.h"
-
-#ifndef __INLINE_IBUF_CTRL__
-#define STORAGE_CLASS_IBUF_CTRL_H extern
-#define STORAGE_CLASS_IBUF_CTRL_C
-#include "ibuf_ctrl_public.h"
-#else  /* __INLINE_IBUF_CTRL__ */
-#define STORAGE_CLASS_IBUF_CTRL_H static inline
-#define STORAGE_CLASS_IBUF_CTRL_C static inline
-#include "ibuf_ctrl_private.h"
-#endif /* __INLINE_IBUF_CTRL__ */
-
-#endif /* __IBUF_CTRL_H_INCLUDED__ */
diff --git a/drivers/staging/media/atomisp/pci/isp2401_input_system_global.h b/drivers/staging/media/atomisp/pci/isp2401_input_system_global.h
index 6407be9331ae..362644856a6c 100644
--- a/drivers/staging/media/atomisp/pci/isp2401_input_system_global.h
+++ b/drivers/staging/media/atomisp/pci/isp2401_input_system_global.h
@@ -26,7 +26,7 @@
 				 *	isys2401_dma_cfg_t
 				 */
 
-#include "ibuf_ctrl.h"		/*	ibuf_cfg_t,
+#include "ibuf_ctrl_local.h"	/*	ibuf_cfg_t,
 				 *	ibuf_ctrl_cfg_t
 				 */
 
diff --git a/drivers/staging/media/atomisp/pci/isp2401_input_system_local.h b/drivers/staging/media/atomisp/pci/isp2401_input_system_local.h
index f52a8ca5f86b..c33b0341ce16 100644
--- a/drivers/staging/media/atomisp/pci/isp2401_input_system_local.h
+++ b/drivers/staging/media/atomisp/pci/isp2401_input_system_local.h
@@ -19,7 +19,6 @@
 #include "type_support.h"
 #include "input_system_global.h"
 
-#include "ibuf_ctrl.h"
 #include "csi_rx.h"
 #include "pixelgen.h"
 #include "isys_stream2mmio.h"
diff --git a/drivers/staging/media/atomisp/pci/isp2401_input_system_private.h b/drivers/staging/media/atomisp/pci/isp2401_input_system_private.h
index f3ca5d1bcb01..e4c76428f6dd 100644
--- a/drivers/staging/media/atomisp/pci/isp2401_input_system_private.h
+++ b/drivers/staging/media/atomisp/pci/isp2401_input_system_private.h
@@ -18,9 +18,222 @@
 
 #include "input_system_public.h"
 
-STORAGE_CLASS_INPUT_SYSTEM_C input_system_err_t input_system_get_state(
-    const input_system_ID_t	ID,
-    input_system_state_t *state)
+#include "device_access.h"	/* ia_css_device_load_uint32 */
+
+#include "assert_support.h" /* assert */
+#include "print_support.h" /* print */
+
+/* Load the register value */
+static inline hrt_data ibuf_ctrl_reg_load(const ibuf_ctrl_ID_t ID,
+					  const hrt_address reg)
+{
+	assert(ID < N_IBUF_CTRL_ID);
+	assert(IBUF_CTRL_BASE[ID] != (hrt_address)-1);
+	return ia_css_device_load_uint32(IBUF_CTRL_BASE[ID] + reg * sizeof(hrt_data));
+}
+
+/* Store a value to the register */
+static inline void ibuf_ctrl_reg_store(const ibuf_ctrl_ID_t ID,
+				       const hrt_address reg,
+				       const hrt_data value)
+{
+	assert(ID < N_IBUF_CTRL_ID);
+	assert(IBUF_CTRL_BASE[ID] != (hrt_address)-1);
+
+	ia_css_device_store_uint32(IBUF_CTRL_BASE[ID] + reg * sizeof(hrt_data), value);
+}
+
+/* Get the state of the ibuf-controller process */
+static inline void ibuf_ctrl_get_proc_state(const ibuf_ctrl_ID_t ID,
+					    const u32 proc_id,
+					    ibuf_ctrl_proc_state_t *state)
+{
+	hrt_address reg_bank_offset;
+
+	reg_bank_offset =
+	    _IBUF_CNTRL_PROC_REG_ALIGN * (1 + proc_id);
+
+	state->num_items =
+	    ibuf_ctrl_reg_load(ID, reg_bank_offset + _IBUF_CNTRL_NUM_ITEMS_PER_STORE);
+
+	state->num_stores =
+	    ibuf_ctrl_reg_load(ID, reg_bank_offset + _IBUF_CNTRL_NUM_STORES_PER_FRAME);
+
+	state->dma_channel =
+	    ibuf_ctrl_reg_load(ID, reg_bank_offset + _IBUF_CNTRL_DMA_CHANNEL);
+
+	state->dma_command =
+	    ibuf_ctrl_reg_load(ID, reg_bank_offset + _IBUF_CNTRL_DMA_CMD);
+
+	state->ibuf_st_addr =
+	    ibuf_ctrl_reg_load(ID, reg_bank_offset + _IBUF_CNTRL_BUFFER_START_ADDRESS);
+
+	state->ibuf_stride =
+	    ibuf_ctrl_reg_load(ID, reg_bank_offset + _IBUF_CNTRL_BUFFER_STRIDE);
+
+	state->ibuf_end_addr =
+	    ibuf_ctrl_reg_load(ID, reg_bank_offset + _IBUF_CNTRL_BUFFER_END_ADDRESS);
+
+	state->dest_st_addr =
+	    ibuf_ctrl_reg_load(ID, reg_bank_offset + _IBUF_CNTRL_DEST_START_ADDRESS);
+
+	state->dest_stride =
+	    ibuf_ctrl_reg_load(ID, reg_bank_offset + _IBUF_CNTRL_DEST_STRIDE);
+
+	state->dest_end_addr =
+	    ibuf_ctrl_reg_load(ID, reg_bank_offset + _IBUF_CNTRL_DEST_END_ADDRESS);
+
+	state->sync_frame =
+	    ibuf_ctrl_reg_load(ID, reg_bank_offset + _IBUF_CNTRL_SYNC_FRAME);
+
+	state->sync_command =
+	    ibuf_ctrl_reg_load(ID, reg_bank_offset + _IBUF_CNTRL_STR2MMIO_SYNC_CMD);
+
+	state->store_command =
+	    ibuf_ctrl_reg_load(ID, reg_bank_offset + _IBUF_CNTRL_STR2MMIO_STORE_CMD);
+
+	state->shift_returned_items =
+	    ibuf_ctrl_reg_load(ID, reg_bank_offset + _IBUF_CNTRL_SHIFT_ITEMS);
+
+	state->elems_ibuf =
+	    ibuf_ctrl_reg_load(ID, reg_bank_offset + _IBUF_CNTRL_ELEMS_P_WORD_IBUF);
+
+	state->elems_dest =
+	    ibuf_ctrl_reg_load(ID, reg_bank_offset + _IBUF_CNTRL_ELEMS_P_WORD_DEST);
+
+	state->cur_stores =
+	    ibuf_ctrl_reg_load(ID, reg_bank_offset + _IBUF_CNTRL_CUR_STORES);
+
+	state->cur_acks =
+	    ibuf_ctrl_reg_load(ID, reg_bank_offset + _IBUF_CNTRL_CUR_ACKS);
+
+	state->cur_s2m_ibuf_addr =
+	    ibuf_ctrl_reg_load(ID, reg_bank_offset + _IBUF_CNTRL_CUR_S2M_IBUF_ADDR);
+
+	state->cur_dma_ibuf_addr =
+	    ibuf_ctrl_reg_load(ID, reg_bank_offset + _IBUF_CNTRL_CUR_DMA_IBUF_ADDR);
+
+	state->cur_dma_dest_addr =
+	    ibuf_ctrl_reg_load(ID, reg_bank_offset + _IBUF_CNTRL_CUR_DMA_DEST_ADDR);
+
+	state->cur_isp_dest_addr =
+	    ibuf_ctrl_reg_load(ID, reg_bank_offset + _IBUF_CNTRL_CUR_ISP_DEST_ADDR);
+
+	state->dma_cmds_send =
+	    ibuf_ctrl_reg_load(ID, reg_bank_offset + _IBUF_CNTRL_CUR_NR_DMA_CMDS_SEND);
+
+	state->main_cntrl_state =
+	    ibuf_ctrl_reg_load(ID, reg_bank_offset + _IBUF_CNTRL_MAIN_CNTRL_STATE);
+
+	state->dma_sync_state =
+	    ibuf_ctrl_reg_load(ID, reg_bank_offset + _IBUF_CNTRL_DMA_SYNC_STATE);
+
+	state->isp_sync_state =
+	    ibuf_ctrl_reg_load(ID, reg_bank_offset + _IBUF_CNTRL_ISP_SYNC_STATE);
+}
+
+/* Get the ibuf-controller state. */
+static inline void ibuf_ctrl_get_state(const ibuf_ctrl_ID_t ID,
+				       ibuf_ctrl_state_t *state)
+{
+	u32 i;
+
+	state->recalc_words =
+	    ibuf_ctrl_reg_load(ID, _IBUF_CNTRL_RECALC_WORDS_STATUS);
+	state->arbiters =
+	    ibuf_ctrl_reg_load(ID, _IBUF_CNTRL_ARBITERS_STATUS);
+
+	/*
+	 * Get the values of the register-set per
+	 * ibuf-controller process.
+	 */
+	for (i = 0; i < N_IBUF_CTRL_PROCS[ID]; i++) {
+		ibuf_ctrl_get_proc_state(
+		    ID,
+		    i,
+		    &state->proc_state[i]);
+	}
+}
+
+/* Dump the ibuf-controller state */
+static inline void ibuf_ctrl_dump_state(const ibuf_ctrl_ID_t ID,
+					ibuf_ctrl_state_t *state)
+{
+	u32 i;
+
+	ia_css_print("IBUF controller ID %d recalculate words 0x%x\n", ID,
+		     state->recalc_words);
+	ia_css_print("IBUF controller ID %d arbiters 0x%x\n", ID, state->arbiters);
+
+	/*
+	 * Dump the values of the register-set per
+	 * ibuf-controller process.
+	 */
+	for (i = 0; i < N_IBUF_CTRL_PROCS[ID]; i++) {
+		ia_css_print("IBUF controller ID %d Process ID %d num_items 0x%x\n", ID, i,
+			     state->proc_state[i].num_items);
+		ia_css_print("IBUF controller ID %d Process ID %d num_stores 0x%x\n", ID, i,
+			     state->proc_state[i].num_stores);
+		ia_css_print("IBUF controller ID %d Process ID %d dma_channel 0x%x\n", ID, i,
+			     state->proc_state[i].dma_channel);
+		ia_css_print("IBUF controller ID %d Process ID %d dma_command 0x%x\n", ID, i,
+			     state->proc_state[i].dma_command);
+		ia_css_print("IBUF controller ID %d Process ID %d ibuf_st_addr 0x%x\n", ID, i,
+			     state->proc_state[i].ibuf_st_addr);
+		ia_css_print("IBUF controller ID %d Process ID %d ibuf_stride 0x%x\n", ID, i,
+			     state->proc_state[i].ibuf_stride);
+		ia_css_print("IBUF controller ID %d Process ID %d ibuf_end_addr 0x%x\n", ID, i,
+			     state->proc_state[i].ibuf_end_addr);
+		ia_css_print("IBUF controller ID %d Process ID %d dest_st_addr 0x%x\n", ID, i,
+			     state->proc_state[i].dest_st_addr);
+		ia_css_print("IBUF controller ID %d Process ID %d dest_stride 0x%x\n", ID, i,
+			     state->proc_state[i].dest_stride);
+		ia_css_print("IBUF controller ID %d Process ID %d dest_end_addr 0x%x\n", ID, i,
+			     state->proc_state[i].dest_end_addr);
+		ia_css_print("IBUF controller ID %d Process ID %d sync_frame 0x%x\n", ID, i,
+			     state->proc_state[i].sync_frame);
+		ia_css_print("IBUF controller ID %d Process ID %d sync_command 0x%x\n", ID, i,
+			     state->proc_state[i].sync_command);
+		ia_css_print("IBUF controller ID %d Process ID %d store_command 0x%x\n", ID, i,
+			     state->proc_state[i].store_command);
+		ia_css_print("IBUF controller ID %d Process ID %d shift_returned_items 0x%x\n",
+			     ID, i,
+			     state->proc_state[i].shift_returned_items);
+		ia_css_print("IBUF controller ID %d Process ID %d elems_ibuf 0x%x\n", ID, i,
+			     state->proc_state[i].elems_ibuf);
+		ia_css_print("IBUF controller ID %d Process ID %d elems_dest 0x%x\n", ID, i,
+			     state->proc_state[i].elems_dest);
+		ia_css_print("IBUF controller ID %d Process ID %d cur_stores 0x%x\n", ID, i,
+			     state->proc_state[i].cur_stores);
+		ia_css_print("IBUF controller ID %d Process ID %d cur_acks 0x%x\n", ID, i,
+			     state->proc_state[i].cur_acks);
+		ia_css_print("IBUF controller ID %d Process ID %d cur_s2m_ibuf_addr 0x%x\n", ID,
+			     i,
+			     state->proc_state[i].cur_s2m_ibuf_addr);
+		ia_css_print("IBUF controller ID %d Process ID %d cur_dma_ibuf_addr 0x%x\n", ID,
+			     i,
+			     state->proc_state[i].cur_dma_ibuf_addr);
+		ia_css_print("IBUF controller ID %d Process ID %d cur_dma_dest_addr 0x%x\n", ID,
+			     i,
+			     state->proc_state[i].cur_dma_dest_addr);
+		ia_css_print("IBUF controller ID %d Process ID %d cur_isp_dest_addr 0x%x\n", ID,
+			     i,
+			     state->proc_state[i].cur_isp_dest_addr);
+		ia_css_print("IBUF controller ID %d Process ID %d dma_cmds_send 0x%x\n", ID, i,
+			     state->proc_state[i].dma_cmds_send);
+		ia_css_print("IBUF controller ID %d Process ID %d main_cntrl_state 0x%x\n", ID,
+			     i,
+			     state->proc_state[i].main_cntrl_state);
+		ia_css_print("IBUF controller ID %d Process ID %d dma_sync_state 0x%x\n", ID, i,
+			     state->proc_state[i].dma_sync_state);
+		ia_css_print("IBUF controller ID %d Process ID %d isp_sync_state 0x%x\n", ID, i,
+			     state->proc_state[i].isp_sync_state);
+	}
+}
+
+static inline input_system_err_t
+input_system_get_state(const input_system_ID_t ID,
+		       input_system_state_t *state)
 {
 	u32 i;
 
@@ -73,9 +286,8 @@ STORAGE_CLASS_INPUT_SYSTEM_C input_system_err_t input_system_get_state(
 	return INPUT_SYSTEM_ERR_NO_ERROR;
 }
 
-STORAGE_CLASS_INPUT_SYSTEM_C void input_system_dump_state(
-    const input_system_ID_t	ID,
-    input_system_state_t *state)
+static inline void input_system_dump_state(const input_system_ID_t ID,
+					   input_system_state_t *state)
 {
 	u32 i;
 
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
