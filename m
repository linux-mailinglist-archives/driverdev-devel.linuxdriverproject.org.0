Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2611416044F
	for <lists+driverdev-devel@lfdr.de>; Sun, 16 Feb 2020 15:17:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8A61F861B3;
	Sun, 16 Feb 2020 14:17:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S04PRUKuBwAf; Sun, 16 Feb 2020 14:17:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B5E0D857E6;
	Sun, 16 Feb 2020 14:17:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 05D211BF44C
 for <devel@linuxdriverproject.org>; Sun, 16 Feb 2020 14:17:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id F36CB203E9
 for <devel@linuxdriverproject.org>; Sun, 16 Feb 2020 14:17:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KGQZXggt8uqN for <devel@linuxdriverproject.org>;
 Sun, 16 Feb 2020 14:17:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by silver.osuosl.org (Postfix) with ESMTPS id C5B4620010
 for <devel@driverdev.osuosl.org>; Sun, 16 Feb 2020 14:17:13 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id g6so5676735plt.2
 for <devel@driverdev.osuosl.org>; Sun, 16 Feb 2020 06:17:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=yaSJzj6B34LI9AMEYcIAi9OzfOKB2Yim5LXEcADq/uc=;
 b=CYOVaWOzIAPrOuriGnHxl6Q8t/ZKR7c53Az4jQtEjLqaCYqTto4foodHc6jg/XuA9I
 GIBKNuStuqC7PpqTNerzqgUXu6nvG7P89iuiprrsq3xfnBCiDZy5OVsqYKvybs8+6Noe
 BAp7jvwMzokbLp1uSfBSLDtogYd9Bnjk5/J708nX8YItCEvs6WxvNrnE8AG8Qr/bD35J
 AI4nWNM3zGxR/LQDoZMZpJEVzc9lyxbEzcGibA9sgPkDYc5cLSct0GbQ6HxXz8S7KLbF
 4dSpvymRjpW48JV0/od4hmyWChg/Ioi1M3tXvtts4XF6YEk3mWKNMc1siQO23k00zuBq
 o8ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=yaSJzj6B34LI9AMEYcIAi9OzfOKB2Yim5LXEcADq/uc=;
 b=tsKVYwAQtEqgCmA5ew/rCpeRsmfBl6j6lb18kHUhSMn5rV4Q2QX48F4TPHNWWAj/tA
 XRTTpo3lc404PMtTXHZmtobCd6iMbqiUk+aS1nJRnonK70ANz0r3VgJGcCp/867Mr53l
 oJ3EGijoKMg4XjLFOSeDWpHvKu1XDWmAj4sNJ7ojv+j+ZjMx4oKffLxfs/yEaMmUlsPB
 YXdc2mBAs5mKjXXlEl7BCMegjmPWxY4rt/qkuRIwukOyh07wPE7XeFVWZM/w+ieV21Ra
 puRPMiinExsJWnlgmHcU1dx73Uvu4NvxbmhVTcyPtu8SvxSs6cv8FuluTwcVfZ5/SWys
 tn3w==
X-Gm-Message-State: APjAAAUt08Bj6kudbTVF5FWH6P0UMoNKxLnq1GVdn18G1iWlhgGqgOD6
 MkIWx+cBYemFWTwDb3FakY8=
X-Google-Smtp-Source: APXvYqzXwvz0IxA+5ZX+rNC2PA/A/+uMheR78c+iiBvfWCLuIWUzR1t+6QVKQp4PYN0my411F1Do0w==
X-Received: by 2002:a17:90b:1256:: with SMTP id
 gx22mr14777973pjb.94.1581862632336; 
 Sun, 16 Feb 2020 06:17:12 -0800 (PST)
Received: from SunnyPranay.localdomain ([106.51.196.103])
 by smtp.gmail.com with ESMTPSA id y127sm13463977pfg.22.2020.02.16.06.17.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 16 Feb 2020 06:17:11 -0800 (PST)
From: sunnypranay <mpranay2017@gmail.com>
To: hsweeten@visionengravers.com
Subject: [PATCH] Documentation: DMA-API-HOWTO.txt: fixed grammer issues Fixed
 some of the grammer issues in DMA-API-HOWTO.txt using the software grammerly.
Date: Sun, 16 Feb 2020 19:46:58 +0530
Message-Id: <20200216141658.734-1-mpranay2017@gmail.com>
X-Mailer: git-send-email 2.17.1
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
 mpranay <mpranay2017@gmail.com>, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: mpranay <mpranay2017@gmail.com>

---
 Documentation/DMA-API-HOWTO.txt  | 628 +++++++++++++++----------------
 drivers/staging/comedi/drivers.c |   2 +-
 2 files changed, 311 insertions(+), 319 deletions(-)

diff --git a/Documentation/DMA-API-HOWTO.txt b/Documentation/DMA-API-HOWTO.txt
index 358d495456d1..fa163470fde7 100644
--- a/Documentation/DMA-API-HOWTO.txt
+++ b/Documentation/DMA-API-HOWTO.txt
@@ -31,7 +31,7 @@ I/O devices use a third kind of address: a "bus address".  If a device has
 registers at an MMIO address, or if it performs DMA to read or write system
 memory, the addresses used by the device are bus addresses.  In some
 systems, bus addresses are identical to CPU physical addresses, but in
-general they are not.  IOMMUs and host bridges can produce arbitrary
+general, they are not.  IOMMUs and host bridges can produce arbitrary
 mappings between physical and bus addresses.
 
 From a device's point of view, DMA uses the bus address space, but it may
@@ -89,7 +89,7 @@ RAM.
 
 So that Linux can use the dynamic DMA mapping, it needs some help from the
 drivers, namely it has to take into account that DMA addresses should be
-mapped only for the time they are actually used and unmapped after the DMA
+mapped only for the time they are used and unmapped after the DMA
 transfer.
 
 The following API will work of course even on platforms where no such
@@ -102,9 +102,9 @@ pci_map_*() interfaces.
 
 First of all, you should make sure::
 
-	#include <linux/dma-mapping.h>
+	#include <linux/dma-mapping.h>
 
-is in your driver, which provides the definition of dma_addr_t.  This type
+is in your driver, which defines dma_addr_t.  This type
 can hold any valid DMA address for the platform and should be used
 everywhere you hold a DMA address returned from the DMA mapping functions.
 
@@ -142,7 +142,7 @@ in the same cache line, and one of them could be overwritten.)
 Also, this means that you cannot take the return of a kmap()
 call and DMA to/from that.  This is similar to vmalloc().
 
-What about block I/O and networking buffers?  The block I/O and
+What about the block I/O and networking buffers?  The block I/O and
 networking subsystems make sure that the buffers they use are valid
 for you to DMA from/to.
 
@@ -163,35 +163,34 @@ your devices DMA addressing capabilities.
 
 This is performed via a call to dma_set_mask_and_coherent()::
 
-	int dma_set_mask_and_coherent(struct device *dev, u64 mask);
+	int dma_set_mask_and_coherent(struct device *dev, u64 mask);
 
 which will set the mask for both streaming and coherent APIs together.  If you
 have some special requirements, then the following two separate calls can be
 used instead:
 
-	The setup for streaming mappings is performed via a call to
-	dma_set_mask()::
+	The setup for streaming mappings is performed via a call to
+ 	dma_set_mask()::
 
-		int dma_set_mask(struct device *dev, u64 mask);
+		int dma_set_mask(struct device *dev, u64 mask);
 
-	The setup for consistent allocations is performed via a call
-	to dma_set_coherent_mask()::
+	The setup for consistent allocations is performed via a call
+	to dma_set_coherent_mask()::
 
-		int dma_set_coherent_mask(struct device *dev, u64 mask);
+		int dma_set_coherent_mask(struct device *dev, u64 mask);
 
-Here, dev is a pointer to the device struct of your device, and mask is a bit
-mask describing which bits of an address your device supports.  Often the
+Here, dev is a pointer to the device struct of your device, and the mask is a 
+bit mask describing which bits of an address your device supports.  Often the
 device struct of your device is embedded in the bus-specific device struct of
 your device.  For example, &pdev->dev is a pointer to the device struct of a
 PCI device (pdev is a pointer to the PCI device struct of your device).
 
-These calls usually return zero to indicated your device can perform DMA
-properly on the machine given the address mask you provided, but they might
+These calls usually return zero to indicate your device can perform DMA
+properly on the machine given the address mask, you provided, but they might
 return an error if the mask is too small to be supportable on the given
 system.  If it returns non-zero, your device cannot perform DMA properly on
 this platform, and attempting to do so will result in undefined behavior.
 You must not use DMA on this device unless the dma_set_mask family of
-functions has returned success.
+functions have returned success.
 
 This means that in the failure case, you have two options:
 
@@ -205,19 +204,19 @@ them for the kernel messages to find out exactly why.
 
 The standard 64-bit addressing device would do something like this::
 
-	if (dma_set_mask_and_coherent(dev, DMA_BIT_MASK(64))) {
-		dev_warn(dev, "mydev: No suitable DMA available\n");
-		goto ignore_this_device;
-	}
+	if (dma_set_mask_and_coherent(dev, DMA_BIT_MASK(64))) {
+		dev_warn(dev, "mydev: No suitable DMA available\n");
+		goto ignore_this_device;
+	}
 
 If the device only supports 32-bit addressing for descriptors in the
 coherent allocations, but supports full 64-bits for streaming mappings
 it would look like this::
 
-	if (dma_set_mask(dev, DMA_BIT_MASK(64))) {
-		dev_warn(dev, "mydev: No suitable DMA available\n");
-		goto ignore_this_device;
-	}
+	if (dma_set_mask(dev, DMA_BIT_MASK(64))) {
+		dev_warn(dev, "mydev: No suitable DMA available\n");
+		goto ignore_this_device;
+	}
 
 The coherent mask will always be able to set the same or a smaller mask as
 the streaming mask. However for the rare case that a device driver only
@@ -225,21 +224,21 @@ uses consistent allocations, one would have to check the return value from
 dma_set_coherent_mask().
 
 Finally, if your device can only drive the low 24-bits of
-address you might do something like::
+the address you might do something like::
 
-	if (dma_set_mask(dev, DMA_BIT_MASK(24))) {
-		dev_warn(dev, "mydev: 24-bit DMA addressing not available\n");
-		goto ignore_this_device;
-	}
+	if (dma_set_mask(dev, DMA_BIT_MASK(24))) {
+		dev_warn(dev, "mydev: 24-bit DMA addressing not available\n");
+		goto ignore_this_device;
+	}
 
-When dma_set_mask() or dma_set_mask_and_coherent() is successful, and
+When dma_set_mask() or dma_set_mask_and_coherent() is successful and
 returns zero, the kernel saves away this mask you have provided.  The
 kernel will use this information later when you make DMA mappings.
 
 There is a case which we are aware of at this time, which is worth
 mentioning in this documentation.  If your device supports multiple
 functions (for example a sound card provides playback and record
-functions) and the various different functions have _different_
+functions) and the various functions have _different_
 DMA addressing limitations, you may wish to probe each mask and
 only provide the functionality which the machine can handle.  It
 is important that the last call to dma_set_mask() be for the
@@ -247,30 +246,30 @@ most specific mask.
 
 Here is pseudo-code showing how this might be done::
 
-	#define PLAYBACK_ADDRESS_BITS	DMA_BIT_MASK(32)
-	#define RECORD_ADDRESS_BITS	DMA_BIT_MASK(24)
-
-	struct my_sound_card *card;
-	struct device *dev;
-
-	...
-	if (!dma_set_mask(dev, PLAYBACK_ADDRESS_BITS)) {
-		card->playback_enabled = 1;
-	} else {
-		card->playback_enabled = 0;
-		dev_warn(dev, "%s: Playback disabled due to DMA limitations\n",
-		       card->name);
-	}
-	if (!dma_set_mask(dev, RECORD_ADDRESS_BITS)) {
-		card->record_enabled = 1;
-	} else {
-		card->record_enabled = 0;
-		dev_warn(dev, "%s: Record disabled due to DMA limitations\n",
-		       card->name);
-	}
-
-A sound card was used as an example here because this genre of PCI
-devices seems to be littered with ISA chips given a PCI front end,
+	#define PLAYBACK_ADDRESS_BITS    DMA_BIT_MASK(32)
+	#define RECORD_ADDRESS_BITS    DMA_BIT_MASK(24)
+
+	struct my_sound_card *card;
+	struct device *dev;
+
+	...
+	if (!dma_set_mask(dev, PLAYBACK_ADDRESS_BITS))
+        	card->playback_enabled = 1;
+	else {
+		card->playback_enabled = 0;
+		dev_warn(dev, "%s: Playback disabled due to DMA limitations\n",
+			card->name);
+	}
+	if (!dma_set_mask(dev, RECORD_ADDRESS_BITS)) 
+		card->record_enabled = 1;
+	else {
+		card->record_enabled = 0;
+		dev_warn(dev, "%s: Record disabled due to DMA limitations\n",
+			card->name);
+	}
+
+A sound card was used as an example here because of this genre of PCI
+devices seem to be littered with ISA chips given a PCI front end,
 and thus retaining the 16MB DMA addressing limitations of ISA.
 
 Types of DMA mappings
@@ -278,7 +277,7 @@ Types of DMA mappings
 
 There are two types of DMA mappings:
 
-- Consistent DMA mappings which are usually mapped at driver
+- Consistent DMA mappings which are usually mapped at a driver
   initialization, unmapped at the end and for which the hardware should
   guarantee that the device and the CPU can access the data
   in parallel and will see updates made by each other without any
@@ -287,40 +286,36 @@ There are two types of DMA mappings:
   Think of "consistent" as "synchronous" or "coherent".
 
   The current default is to return consistent memory in the low 32
-  bits of the DMA space.  However, for future compatibility you should
-  set the consistent mask even if this default is fine for your
-  driver.
+  bits of the DMA space.  However, for future compatibility, you should set a consistent mask even if this default is fine for your driver.
 
   Good examples of what to use consistent mappings for are:
 
-	- Network card DMA ring descriptors.
-	- SCSI adapter mailbox command data structures.
-	- Device firmware microcode executed out of
-	  main memory.
+	- Network card DMA ring descriptors.
+	- SCSI adapter mailbox command data structures.
+	- Device firmware microcode executed out of
+	  main memory.
 
-  The invariant these examples all require is that any CPU store
-  to memory is immediately visible to the device, and vice
-  versa.  Consistent mappings guarantee this.
+  The invariant these examples all require is that any CPU store 
+  to memory is immediately visible to the device, and vice versa.  
+  Consistent mappings guarantee this.
 
   .. important::
 
-	     Consistent DMA memory does not preclude the usage of
-	     proper memory barriers.  The CPU may reorder stores to
-	     consistent memory just as it may normal memory.  Example:
-	     if it is important for the device to see the first word
-	     of a descriptor updated before the second, you must do
-	     something like::
+            Consistent DMA memory does not preclude the usage of
+            proper memory barriers.  The CPU may reorder stores to
+            consistent memory just as it may normal memory.  Example:
+            if the device needs to see the first word
+            of a descriptor updated before the second, you must do
+            something like::
 
-		desc->word0 = address;
-		wmb();
-		desc->word1 = DESC_VALID;
+        	desc->word0 = address;
+        	wmb();
+        	desc->word1 = DESC_VALID;
 
-             in order to get correct behavior on all platforms.
+             to get correct behavior on all platforms.
 
-	     Also, on some platforms your driver may need to flush CPU write
-	     buffers in much the same way as it needs to flush write buffers
-	     found in PCI bridges (such as by reading a register's value
-	     after writing it).
+            Also, on some platforms, your driver may need to flush CPU write
+            buffers in much the same way as it needs to flush write buffers
+            found in PCI bridges (such as by reading a register's value
+            after writing it).
 
 - Streaming DMA mappings which are usually mapped for one DMA
   transfer, unmapped right after it (unless you use dma_sync_* below)
@@ -331,12 +326,10 @@ There are two types of DMA mappings:
 
   Good examples of what to use streaming mappings for are:
 
-	- Networking buffers transmitted/received by a device.
-	- Filesystem buffers written/read by a SCSI device.
+       - Networking buffers transmitted/received by a device.
+       - Filesystem buffers are written/read by a SCSI device.
 
-  The interfaces for using this type of mapping were designed in
-  such a way that an implementation can make whatever performance
-  optimizations the hardware allows.  To this end, when using
+  The interfaces for using this type of mapping were designed in 
+  such a way that an implementation can make whatever performance 
+  optimizations the hardware allows.  To this end, when using
   such mappings you must be explicit about what you want to happen.
 
 Neither type of DMA mapping has alignment restrictions that come from
@@ -351,11 +344,11 @@ Using Consistent DMA mappings
 To allocate and map large (PAGE_SIZE or so) consistent DMA regions,
 you should do::
 
-	dma_addr_t dma_handle;
+    	dma_addr_t dma_handle;
 
-	cpu_addr = dma_alloc_coherent(dev, size, &dma_handle, gfp);
+    	cpu_addr = dma_alloc_coherent(dev, size, &dma_handle, gfp);
 
-where device is a ``struct device *``. This may be called in interrupt
+where the device is a ``struct device *``. This may be called in interrupt
 context with the GFP_ATOMIC flag.
 
 Size is the length of the region you want to allocate, in bytes.
@@ -385,7 +378,7 @@ buffer you receive will not cross a 64K boundary.
 
 To unmap and free such a DMA region, you call::
 
-	dma_free_coherent(dev, size, cpu_addr, dma_handle);
+       dma_free_coherent(dev, size, cpu_addr, dma_handle);
 
 where dev, size are the same as in the above call and cpu_addr and
 dma_handle are the values dma_alloc_coherent() returned to you.
@@ -400,9 +393,9 @@ like queue heads needing to be aligned on N byte boundaries.
 
 Create a dma_pool like this::
 
-	struct dma_pool *pool;
+       struct dma_pool *pool;
 
-	pool = dma_pool_create(name, dev, size, align, boundary);
+       pool = dma_pool_create(name, dev, size, align, boundary);
 
 The "name" is for diagnostics (like a kmem_cache name); dev and size
 are as above.  The device's hardware alignment requirement for this
@@ -414,7 +407,7 @@ use dma_alloc_coherent() directly instead).
 
 Allocate memory from a DMA pool like this::
 
-	cpu_addr = dma_pool_alloc(pool, flags, &dma_handle);
+       cpu_addr = dma_pool_alloc(pool, flags, &dma_handle);
 
 flags are GFP_KERNEL if blocking is permitted (not in_interrupt nor
 holding SMP locks), GFP_ATOMIC otherwise.  Like dma_alloc_coherent(),
@@ -422,7 +415,7 @@ this returns two values, cpu_addr and dma_handle.
 
 Free memory that was allocated from a dma_pool like this::
 
-	dma_pool_free(pool, cpu_addr, dma_handle);
+       dma_pool_free(pool, cpu_addr, dma_handle);
 
 where pool is what you passed to dma_pool_alloc(), and cpu_addr and
 dma_handle are the values dma_pool_alloc() returned. This function
@@ -430,7 +423,7 @@ may be called in interrupt context.
 
 Destroy a dma_pool by calling::
 
-	dma_pool_destroy(pool);
+       dma_pool_destroy(pool);
 
 Make sure you've called dma_pool_free() for all memory allocated
 from a pool before you destroy the pool. This function may not
@@ -461,20 +454,20 @@ as you possibly can.
 If you absolutely cannot know the direction of the DMA transfer,
 specify DMA_BIDIRECTIONAL.  It means that the DMA can go in
 either direction.  The platform guarantees that you may legally
-specify this, and that it will work, but this may be at the
+specify this and that it will work, but this may be at the
 cost of performance for example.
 
 The value DMA_NONE is to be used for debugging.  One can
 hold this in a data structure before you come to know the
-precise direction, and this will help catch cases where your
+precise direction and this will help catch cases where your
 direction tracking logic has failed to set things up properly.
 
 Another advantage of specifying this value precisely (outside of
 potential platform-specific optimizations of such) is for debugging.
-Some platforms actually have a write permission boolean which DMA
+Some platforms have a write permission boolean which DMA
 mappings can be marked with, much like page protections in the user
 program address space.  Such platforms can and do report errors in the
-kernel logs when the DMA controller hardware detects violation of the
+kernel logs when the DMA controller hardware detects a violation of the
 permission setting.
 
 Only streaming mappings specify a direction, consistent mappings
@@ -487,7 +480,7 @@ working on.
 
 For Networking drivers, it's a rather simple affair.  For transmit
 packets, map/unmap them with the DMA_TO_DEVICE direction
-specifier.  For receive packets, just the opposite, map/unmap them
+specifier.  To receive packets, just the opposite, map/unmap them
 with the DMA_FROM_DEVICE direction specifier.
 
 Using Streaming DMA mappings
@@ -496,28 +489,28 @@ Using Streaming DMA mappings
 The streaming DMA mapping routines can be called from interrupt
 context.  There are two versions of each map/unmap, one which will
 map/unmap a single memory region, and one which will map/unmap a
-scatterlist.
+scatter list.
 
 To map a single region, you do::
 
-	struct device *dev = &my_dev->dev;
-	dma_addr_t dma_handle;
-	void *addr = buffer->ptr;
-	size_t size = buffer->len;
-
-	dma_handle = dma_map_single(dev, addr, size, direction);
-	if (dma_mapping_error(dev, dma_handle)) {
-		/*
-		 * reduce current DMA mapping usage,
-		 * delay and try again later or
-		 * reset driver.
-		 */
-		goto map_error_handling;
-	}
+    	struct device *dev = &my_dev->dev;
+    	dma_addr_t dma_handle;
+    	void *addr = buffer->ptr;
+    	size_t size = buffer->len;
+
+    	dma_handle = dma_map_single(dev, addr, size, direction);
+    	if (dma_mapping_error(dev, dma_handle)) {
+       	 /*
+         	* reduce current DMA mapping usage,
+         	* delay and try again later or
+         	* reset driver.
+        	*/
+        	goto map_error_handling;
+    	}
 
 and to unmap it::
 
-	dma_unmap_single(dev, dma_handle, size, direction);
+       dma_unmap_single(dev, dma_handle, size, direction);
 
 You should call dma_mapping_error() as dma_map_single() could fail and return
 error.  Doing so will ensure that the mapping code will work correctly on all
@@ -535,25 +528,25 @@ map/unmap interface pair akin to dma_{map,unmap}_single().  These
 interfaces deal with page/offset pairs instead of CPU pointers.
 Specifically::
 
-	struct device *dev = &my_dev->dev;
-	dma_addr_t dma_handle;
-	struct page *page = buffer->page;
-	unsigned long offset = buffer->offset;
-	size_t size = buffer->len;
+       struct device *dev = &my_dev->dev;
+    	dma_addr_t dma_handle;
+     	struct page *page = buffer->page;
+    	unsigned long offset = buffer->offset;
+    	size_t size = buffer->len;
 
-	dma_handle = dma_map_page(dev, page, offset, size, direction);
-	if (dma_mapping_error(dev, dma_handle)) {
-		/*
-		 * reduce current DMA mapping usage,
-		 * delay and try again later or
-		 * reset driver.
-		 */
-		goto map_error_handling;
-	}
+    	dma_handle = dma_map_page(dev, page, offset, size, direction);
+    	if (dma_mapping_error(dev, dma_handle)) {
+       	 /*
+         	* reduce current DMA mapping usage,
+         	* delay and try again later or
+         	* reset driver.
+         	*/
+        	goto map_error_handling;
+    	}
 
-	...
+    	...
 
-	dma_unmap_page(dev, dma_handle, size, direction);
+    	dma_unmap_page(dev, dma_handle, size, direction);
 
 Here, "offset" means byte offset within the given page.
 
@@ -565,13 +558,13 @@ from the interrupt which told you that the DMA transfer is done.
 
 With scatterlists, you map a region gathered from several regions by::
 
-	int i, count = dma_map_sg(dev, sglist, nents, direction);
-	struct scatterlist *sg;
+    	int i, count = dma_map_sg(dev, sglist, nents, direction);
+    	struct scatterlist *sg;
 
-	for_each_sg(sglist, sg, count, i) {
-		hw_address[i] = sg_dma_address(sg);
-		hw_len[i] = sg_dma_len(sg);
-	}
+    	for_each_sg(sglist, sg, count, i) {
+       	 hw_address[i] = sg_dma_address(sg);
+        	hw_len[i] = sg_dma_len(sg);
+    	}
 
 where nents is the number of entries in the sglist.
 
@@ -579,9 +572,9 @@ The implementation is free to merge several consecutive sglist entries
 into one (e.g. if DMA mapping is done with PAGE_SIZE granularity, any
 consecutive sglist entries can be merged into one provided the first one
 ends and the second one starts on a page boundary - in fact this is a huge
-advantage for cards which either cannot do scatter-gather or have very
-limited number of scatter-gather entries) and returns the actual number
-of sg entries it mapped them to. On failure 0 is returned.
+the advantage for cards which either cannot do scatter-gather or have very
+a limited number of scatter-gather entries) and returns the actual number
+of sg entries, it mapped them to. On failure 0 is returned.
 
 Then you should loop count times (note: this can be less than nents times)
 and use sg_dma_address() and sg_dma_len() macros where you previously
@@ -589,16 +582,16 @@ accessed sg->address and sg->length as shown above.
 
 To unmap a scatterlist, just call::
 
-	dma_unmap_sg(dev, sglist, nents, direction);
+    	dma_unmap_sg(dev, sglist, nents, direction);
 
 Again, make sure DMA activity has already finished.
 
 .. note::
 
-	The 'nents' argument to the dma_unmap_sg call must be
-	the _same_ one you passed into the dma_map_sg call,
-	it should _NOT_ be the 'count' value _returned_ from the
-	dma_map_sg call.
+    	The 'nents' argument to the dma_unmap_sg call must be
+    	the _same_ one you passed into the dma_map_sg call,
+    	it should _NOT_ be the 'count' value _returned_ from the
+    	dma_map_sg call.
 
 Every dma_map_{single,sg}() call should have its dma_unmap_{single,sg}()
 counterpart, because the DMA address space is a shared resource and
@@ -606,17 +599,17 @@ you could render the machine unusable by consuming all DMA addresses.
 
 If you need to use the same streaming DMA region multiple times and touch
 the data in between the DMA transfers, the buffer needs to be synced
-properly in order for the CPU and device to see the most up-to-date and
-correct copy of the DMA buffer.
+properly for the CPU and device to see the most up-to-date and
+a correct copy of the DMA buffer.
 
 So, firstly, just map it with dma_map_{single,sg}(), and after each DMA
 transfer call either::
 
-	dma_sync_single_for_cpu(dev, dma_handle, size, direction);
+    	dma_sync_single_for_cpu(dev, dma_handle, size, direction);
 
 or::
 
-	dma_sync_sg_for_cpu(dev, sglist, nents, direction);
+    	dma_sync_sg_for_cpu(dev, sglist, nents, direction);
 
 as appropriate.
 
@@ -624,95 +617,95 @@ Then, if you wish to let the device get at the DMA area again,
 finish accessing the data with the CPU, and then before actually
 giving the buffer to the hardware call either::
 
-	dma_sync_single_for_device(dev, dma_handle, size, direction);
+    	dma_sync_single_for_device(dev, dma_handle, size, direction);
 
 or::
 
-	dma_sync_sg_for_device(dev, sglist, nents, direction);
+    	dma_sync_sg_for_device(dev, sglist, nents, direction);
 
 as appropriate.
 
 .. note::
 
-	      The 'nents' argument to dma_sync_sg_for_cpu() and
-	      dma_sync_sg_for_device() must be the same passed to
-	      dma_map_sg(). It is _NOT_ the count returned by
-	      dma_map_sg().
+             The 'nents' argument to dma_sync_sg_for_cpu() and
+             dma_sync_sg_for_device() must be the same passed to
+             dma_map_sg(). It is _NOT_ the count returned by
+             dma_map_sg().
 
 After the last DMA transfer call one of the DMA unmap routines
 dma_unmap_{single,sg}(). If you don't touch the data from the first
 dma_map_*() call till dma_unmap_*(), then you don't have to call the
 dma_sync_*() routines at all.
 
-Here is pseudo code which shows a situation in which you would need
+Here is pseudo-code which shows a situation in which you would need
 to use the dma_sync_*() interfaces::
 
-	my_card_setup_receive_buffer(struct my_card *cp, char *buffer, int len)
-	{
-		dma_addr_t mapping;
-
-		mapping = dma_map_single(cp->dev, buffer, len, DMA_FROM_DEVICE);
-		if (dma_mapping_error(cp->dev, mapping)) {
-			/*
-			 * reduce current DMA mapping usage,
-			 * delay and try again later or
-			 * reset driver.
-			 */
-			goto map_error_handling;
-		}
-
-		cp->rx_buf = buffer;
-		cp->rx_len = len;
-		cp->rx_dma = mapping;
-
-		give_rx_buf_to_card(cp);
-	}
-
-	...
-
-	my_card_interrupt_handler(int irq, void *devid, struct pt_regs *regs)
-	{
-		struct my_card *cp = devid;
-
-		...
-		if (read_card_status(cp) == RX_BUF_TRANSFERRED) {
-			struct my_card_header *hp;
-
-			/* Examine the header to see if we wish
-			 * to accept the data.  But synchronize
-			 * the DMA transfer with the CPU first
-			 * so that we see updated contents.
-			 */
-			dma_sync_single_for_cpu(&cp->dev, cp->rx_dma,
-						cp->rx_len,
-						DMA_FROM_DEVICE);
-
-			/* Now it is safe to examine the buffer. */
-			hp = (struct my_card_header *) cp->rx_buf;
-			if (header_is_ok(hp)) {
-				dma_unmap_single(&cp->dev, cp->rx_dma, cp->rx_len,
-						 DMA_FROM_DEVICE);
-				pass_to_upper_layers(cp->rx_buf);
-				make_and_setup_new_rx_buf(cp);
-			} else {
-				/* CPU should not write to
-				 * DMA_FROM_DEVICE-mapped area,
-				 * so dma_sync_single_for_device() is
-				 * not needed here. It would be required
-				 * for DMA_BIDIRECTIONAL mapping if
-				 * the memory was modified.
-				 */
-				give_rx_buf_to_card(cp);
-			}
-		}
-	}
+	my_card_setup_receive_buffer(struct my_card *cp, char *buffer, int len)
+	{
+		dma_addr_t mapping;
+
+		mapping = dma_map_single(cp->dev, buffer, len, DMA_FROM_DEVICE);
+		if (dma_mapping_error(cp->dev, mapping)) {
+			/*
+			 * reduce current DMA mapping usage,
+			 * delay and try again later or
+			 * reset driver.
+			 */
+			goto map_error_handling;
+		}
+
+		cp->rx_buf = buffer;
+		cp->rx_len = len;
+		cp->rx_dma = mapping;
+
+		give_rx_buf_to_card(cp);
+	}
+
+	...
+
+	my_card_interrupt_handler(int irq, void *devid, struct pt_regs *regs)
+	{
+		struct my_card *cp = devid;
+
+		...
+		if (read_card_status(cp) == RX_BUF_TRANSFERRED) {
+			struct my_card_header *hp;
+
+			/* Examine the header to see if we wish
+			 * to accept the data.  But synchronize
+			 * the DMA transfer with the CPU first
+			 * so that we see updated contents.
+			 */
+			dma_sync_single_for_cpu(&cp->dev, cp->rx_dma,
+						cp->rx_len,
+						DMA_FROM_DEVICE);
+
+			/* Now it is safe to examine the buffer. */
+			hp = (struct my_card_header *) cp->rx_buf;
+			if (header_is_ok(hp)) {
+				dma_unmap_single(&cp->dev, cp->rx_dma, cp->rx_len,
+						 DMA_FROM_DEVICE);
+				pass_to_upper_layers(cp->rx_buf);
+				make_and_setup_new_rx_buf(cp);
+			} else {
+				/* CPU should not write to
+				 * DMA_FROM_DEVICE-mapped area,
+				 * so dma_sync_single_for_device() is
+				 * not needed here. It would be required
+				 * for DMA_BIDIRECTIONAL mapping if
+				 * the memory was modified.
+				 */
+			 	give_rx_buf_to_card(cp);
+			}
+		}
+    	}
 
 Drivers converted fully to this interface should not use virt_to_bus() any
 longer, nor should they use bus_to_virt(). Some drivers have to be changed a
-little bit, because there is no longer an equivalent to bus_to_virt() in the
+a little bit, because there is no longer an equivalent to bus_to_virt() in the
 dynamic DMA mapping scheme - you have to always store the DMA addresses
 returned by the dma_alloc_coherent(), dma_pool_alloc(), and dma_map_single()
-calls (dma_map_sg() stores them in the scatterlist itself if the platform
+calls (dma_map_sg() stores them in the scatter list itself if the platform
 supports dynamic DMA mapping in hardware) in your driver structures and/or
 in the card registers.
 
@@ -732,90 +725,90 @@ failure can be determined by:
 - checking the dma_addr_t returned from dma_map_single() and dma_map_page()
   by using dma_mapping_error()::
 
-	dma_addr_t dma_handle;
+    	dma_addr_t dma_handle;
 
-	dma_handle = dma_map_single(dev, addr, size, direction);
-	if (dma_mapping_error(dev, dma_handle)) {
-		/*
-		 * reduce current DMA mapping usage,
-		 * delay and try again later or
-		 * reset driver.
-		 */
-		goto map_error_handling;
-	}
+ 	dma_handle = dma_map_single(dev, addr, size, direction);
+	if (dma_mapping_error(dev, dma_handle)) {
+		/*
+		 * reduce current DMA mapping usage,
+ 		 * delay and try again later or
+		 * reset driver.
+		 */
+		goto map_error_handling;
+	}
 
 - unmap pages that are already mapped, when mapping error occurs in the middle
-  of a multiple page mapping attempt. These example are applicable to
+  of a multiple page mapping attempt. These examples apply to
   dma_map_page() as well.
 
 Example 1::
 
-	dma_addr_t dma_handle1;
-	dma_addr_t dma_handle2;
-
-	dma_handle1 = dma_map_single(dev, addr, size, direction);
-	if (dma_mapping_error(dev, dma_handle1)) {
-		/*
-		 * reduce current DMA mapping usage,
-		 * delay and try again later or
-		 * reset driver.
-		 */
-		goto map_error_handling1;
-	}
-	dma_handle2 = dma_map_single(dev, addr, size, direction);
-	if (dma_mapping_error(dev, dma_handle2)) {
-		/*
-		 * reduce current DMA mapping usage,
-		 * delay and try again later or
-		 * reset driver.
-		 */
-		goto map_error_handling2;
-	}
-
-	...
-
-	map_error_handling2:
-		dma_unmap_single(dma_handle1);
-	map_error_handling1:
+	dma_addr_t dma_handle1;
+	dma_addr_t dma_handle2;
+
+	dma_handle1 = dma_map_single(dev, addr, size, direction);
+	if (dma_mapping_error(dev, dma_handle1)) {
+        /*
+         * reduce current DMA mapping usage,
+         * delay and try again later or
+         * reset driver.
+         */
+        goto map_error_handling1;
+    }
+	dma_handle2 = dma_map_single(dev, addr, size, direction);
+	if (dma_mapping_error(dev, dma_handle2)) {
+	       /*
+		* reduce current DMA mapping usage,
+		* delay and try again later or
+		* reset driver.
+		*/
+		goto map_error_handling2;
+	}
+
+	...
+
+	map_error_handling2:
+		dma_unmap_single(dma_handle1);
+	map_error_handling1:
 
 Example 2::
 
-	/*
-	 * if buffers are allocated in a loop, unmap all mapped buffers when
-	 * mapping error is detected in the middle
-	 */
+    	/*
+     	 * if buffers are allocated in a loop, unmap all mapped buffers when
+     	 * mapping error is detected in the middle
+     	 */
 
-	dma_addr_t dma_addr;
-	dma_addr_t array[DMA_BUFFERS];
-	int save_index = 0;
+    	dma_addr_t dma_addr;
+    	dma_addr_t array[DMA_BUFFERS];
+    	int save_index = 0;
 
-	for (i = 0; i < DMA_BUFFERS; i++) {
+	for (i = 0; i < DMA_BUFFERS; i++) {
 
-		...
+		...
 
-		dma_addr = dma_map_single(dev, addr, size, direction);
-		if (dma_mapping_error(dev, dma_addr)) {
-			/*
-			 * reduce current DMA mapping usage,
-			 * delay and try again later or
-			 * reset driver.
-			 */
-			goto map_error_handling;
-		}
-		array[i].dma_addr = dma_addr;
-		save_index++;
-	}
+		dma_addr = dma_map_single(dev, addr, size, direction);
+		if (dma_mapping_error(dev, dma_addr)) {
+			/*
+			* reduce current DMA mapping usage,
+			* delay and try again later or
+			* reset driver.
+			*/
+			goto map_error_handling;
+		}
+		array[i].dma_addr = dma_addr;
+		save_index++;
+	}
 
-	...
+	...
 
-	map_error_handling:
+	map_error_handling:
 
-	for (i = 0; i < save_index; i++) {
+	for (i = 0; i < save_index; i++) {
 
-		...
+		...
 
-		dma_unmap_single(array[i].dma_addr);
-	}
+		dma_unmap_single(array[i].dma_addr);
+	}
 
 Networking drivers must call dev_kfree_skb() to free the socket buffer
 and return NETDEV_TX_OK if the DMA mapping fails on the transmit hook
@@ -823,7 +816,7 @@ and return NETDEV_TX_OK if the DMA mapping fails on the transmit hook
 the failure case.
 
 SCSI drivers must return SCSI_MLQUEUE_HOST_BUSY if the DMA mapping
-fails in the queuecommand hook. This means that the SCSI subsystem
+fails in the queue command hook. This means that the SCSI subsystem
 passes the command to the driver again later.
 
 Optimizing Unmap State Space Consumption
@@ -832,7 +825,7 @@ Optimizing Unmap State Space Consumption
 On many platforms, dma_unmap_{single,page}() is simply a nop.
 Therefore, keeping track of the mapping address and length is a waste
 of space.  Instead of filling your drivers up with ifdefs and the like
-to "work around" this (which would defeat the whole purpose of a
+to "workaround" this (which would defeat the whole purpose of a
 portable API) the following facilities are provided.
 
 Actually, instead of describing the macros one by one, we'll
@@ -841,47 +834,47 @@ transform some example code.
 1) Use DEFINE_DMA_UNMAP_{ADDR,LEN} in state saving structures.
    Example, before::
 
-	struct ring_state {
-		struct sk_buff *skb;
-		dma_addr_t mapping;
-		__u32 len;
-	};
+		struct ring_state {
+		struct sk_buff *skb;
+		dma_addr_t mapping;
+		__u32 len;
+	};
 
    after::
 
-	struct ring_state {
-		struct sk_buff *skb;
-		DEFINE_DMA_UNMAP_ADDR(mapping);
-		DEFINE_DMA_UNMAP_LEN(len);
-	};
+	struct ring_state {
+		struct sk_buff *skb;
+		DEFINE_DMA_UNMAP_ADDR(mapping);
+		DEFINE_DMA_UNMAP_LEN(len);
+	};
 
 2) Use dma_unmap_{addr,len}_set() to set these values.
    Example, before::
 
-	ringp->mapping = FOO;
-	ringp->len = BAR;
+	ringp->mapping = FOO;
+	ringp->len = BAR;
 
    after::
 
-	dma_unmap_addr_set(ringp, mapping, FOO);
-	dma_unmap_len_set(ringp, len, BAR);
+	dma_unmap_addr_set(ringp, mapping, FOO);
+	dma_unmap_len_set(ringp, len, BAR);
 
 3) Use dma_unmap_{addr,len}() to access these values.
    Example, before::
 
-	dma_unmap_single(dev, ringp->mapping, ringp->len,
-			 DMA_FROM_DEVICE);
+	dma_unmap_single(dev, ringp->mapping, ringp->len,
+			 DMA_FROM_DEVICE);
 
    after::
 
-	dma_unmap_single(dev,
-			 dma_unmap_addr(ringp, mapping),
-			 dma_unmap_len(ringp, len),
-			 DMA_FROM_DEVICE);
+	dma_unmap_single(dev,
+			dma_unmap_addr(ringp, mapping),
+			dma_unmap_len(ringp, len),
+			DMA_FROM_DEVICE);
 
 It really should be self-explanatory.  We treat the ADDR and LEN
 separately, because it is possible for an implementation to only
-need the address in order to perform the unmap operation.
+need the address to perform the unmap operation.
 
 Platform Issues
 ===============
@@ -890,7 +883,7 @@ If you are just writing drivers for Linux and do not maintain
 an architecture port for the kernel, you can safely skip down
 to "Closing".
 
-1) Struct scatterlist requirements.
+1) Struct scatter list requirements.
 
    You need to enable CONFIG_NEED_SG_DMA_LENGTH if the architecture
    supports IOMMUs (including software IOMMU).
@@ -905,8 +898,7 @@ to "Closing".
    makes sure that kmalloc'ed buffer doesn't share a cache line with
    the others. See arch/arm/include/asm/cache.h as an example.
 
-   Note that ARCH_DMA_MINALIGN is about DMA memory alignment
-   constraints. You don't need to worry about the architecture data
+   Note that ARCH_DMA_MINALIGN is about DMA memory alignment 
+   constraints. You don't need to worry about the architecture data
    alignment constraints (e.g. the alignment constraints about 64-bit
    objects).
 
@@ -918,12 +910,12 @@ form without the feedback and suggestions from numerous individuals.
 We would like to specifically mention, in no particular order, the
 following people::
 
-	Russell King <rmk@arm.linux.org.uk>
-	Leo Dagum <dagum@barrel.engr.sgi.com>
-	Ralf Baechle <ralf@oss.sgi.com>
-	Grant Grundler <grundler@cup.hp.com>
-	Jay Estabrook <Jay.Estabrook@compaq.com>
-	Thomas Sailer <sailer@ife.ee.ethz.ch>
-	Andrea Arcangeli <andrea@suse.de>
-	Jens Axboe <jens.axboe@oracle.com>
-	David Mosberger-Tang <davidm@hpl.hp.com>
+    	Russell King <rmk@arm.linux.org.uk>
+    	Leo Dagum <dagum@barrel.engr.sgi.com>
+    	Ralf Baechle <ralf@oss.sgi.com>
+    	Grant Grundler <grundler@cup.hp.com>
+    	Jay Estabrook <Jay.Estabrook@compaq.com>
+    	Thomas Sailer <sailer@ife.ee.ethz.ch>
+    	Andrea Arcangeli <andrea@suse.de>
+    	Jens Axboe <jens.axboe@oracle.com>
+    	David Mosberger-Tang <davidm@hpl.hp.com>
diff --git a/drivers/staging/comedi/drivers.c b/drivers/staging/comedi/drivers.c
index 750a6ff3c03c..4e5c0b915841 100644
--- a/drivers/staging/comedi/drivers.c
+++ b/drivers/staging/comedi/drivers.c
@@ -133,7 +133,7 @@ EXPORT_SYMBOL_GPL(comedi_alloc_subdevices);
  * On success, @s->readback points to the first element of the array, which
  * is zero-filled.  The low-level driver is responsible for updating its
  * contents.  @s->insn_read will be set to comedi_readback_insn_read()
- * unless it is already non-NULL.
+ * Unless it is already non-NULL.
  *
  * Returns 0 on success, -EINVAL if the subdevice has no channels, or
  * -ENOMEM on allocation failure.
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
