Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2E401D495C
	for <lists+driverdev-devel@lfdr.de>; Fri, 15 May 2020 11:21:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 77A668969D;
	Fri, 15 May 2020 09:21:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mj51B-i-X6uk; Fri, 15 May 2020 09:21:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id AA3EB899FF;
	Fri, 15 May 2020 09:21:32 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DA15C1BF9C1
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 15 May 2020 09:21:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D750487D2A
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 15 May 2020 09:21:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id D1s_hv9z6Zku
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 15 May 2020 09:21:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa5.microchip.iphmx.com (esa5.microchip.iphmx.com
 [216.71.150.166])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3D1B387D30
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 15 May 2020 09:21:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589534483; x=1621070483;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=zsFcnNZB2FIei2JbpYP2n0GBFo3OywlqUOATL1HT6eo=;
 b=JhpTkb75IqqNjVraTCUp9xSELgfA1u72dPbgt0Fs+H5zdnkQDNk+GXtH
 AFa6oSrc1bL4AzIg9FRczx7MKTFdQazDSVEIJC6zYX5fZEX+BOvhK0G3J
 8VaoPFu+ZBvYocP6+fhvCJgHN2WwyjxTW5Zu1XtjYaWKzLP9uTbS4zSU9
 PXaIWzURUdXtZ90eBhnFJrhw7UcSQHoSI1qyFNqT2M6D0N71xfr+oUwlK
 65TjVKIOcbZJSPocp627WHnF0JIKjoduuVckxbZMI6QHZ7Mfqo1uiy3cW
 lsxTEHdKnvFGQnDlVPEZxKmNMKucCJftcln4OkzyWX15g9rOf5XKa3JhY Q==;
IronPort-SDR: W1O2hWX77n5jduYYibqw19iq3aPAF7pkHi67eTey9pcb7LaNT/jXnypReiNafciuRBYhZHWwq0
 dhuEsoeHnZp0H7KwCZof/okgEPi8FWtiEv5+Gcgr55Bii0SaSkA1YQm/zUGxeLnV7HY3YOExuj
 lvAVgcgfmDNRpCT2gsgLjpdxR5bEZxZcV0UA1uqJbh+kV4fR7IkveDKX9VH6saoMVNEIUZKe/8
 2cMOevvIWXrhzAxQvoh8aWPcTRsz+lEXaSgemJrG4YAUql1fr6oyqCM+x0ayzsb16kvgnAd4Sb
 aGY=
X-IronPort-AV: E=Sophos;i="5.73,394,1583218800"; d="scan'208";a="76018844"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 15 May 2020 02:21:12 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 15 May 2020 02:21:14 -0700
Received: from localhost.localdomain (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Fri, 15 May 2020 02:21:10 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH v3 2/7] staging: most: usb: remove reference to USB error codes
Date: Fri, 15 May 2020 11:21:00 +0200
Message-ID: <1589534465-7423-3-git-send-email-christian.gromm@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1589534465-7423-1-git-send-email-christian.gromm@microchip.com>
References: <1589534465-7423-1-git-send-email-christian.gromm@microchip.com>
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
Cc: Christian Gromm <christian.gromm@microchip.com>,
 driverdev-devel@linuxdriverproject.org, linux-usb@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch removes the reference to the driver API file for USB error
codes.

Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
Reported-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
v2:
	removed copied USB error code section
v3:

 drivers/staging/most/usb/usb.c | 97 ------------------------------------------
 1 file changed, 97 deletions(-)

diff --git a/drivers/staging/most/usb/usb.c b/drivers/staging/most/usb/usb.c
index 85d4fa0..dbb6003 100644
--- a/drivers/staging/most/usb/usb.c
+++ b/drivers/staging/most/usb/usb.c
@@ -382,103 +382,6 @@ static void hdm_write_completion(struct urb *urb)
  * padding bytes -if necessary- and calls the completion function.
  *
  * Context: interrupt!
- *
- * **************************************************************************
- *                   Error codes returned by in urb->status
- *                   or in iso_frame_desc[n].status (for ISO)
- * *************************************************************************
- *
- * USB device drivers may only test urb status values in completion handlers.
- * This is because otherwise there would be a race between HCDs updating
- * these values on one CPU, and device drivers testing them on another CPU.
- *
- * A transfer's actual_length may be positive even when an error has been
- * reported.  That's because transfers often involve several packets, so that
- * one or more packets could finish before an error stops further endpoint I/O.
- *
- * For isochronous URBs, the urb status value is non-zero only if the URB is
- * unlinked, the device is removed, the host controller is disabled or the total
- * transferred length is less than the requested length and the URB_SHORT_NOT_OK
- * flag is set.  Completion handlers for isochronous URBs should only see
- * urb->status set to zero, -ENOENT, -ECONNRESET, -ESHUTDOWN, or -EREMOTEIO.
- * Individual frame descriptor status fields may report more status codes.
- *
- *
- * 0			Transfer completed successfully
- *
- * -ENOENT		URB was synchronously unlinked by usb_unlink_urb
- *
- * -EINPROGRESS		URB still pending, no results yet
- *			(That is, if drivers see this it's a bug.)
- *
- * -EPROTO (*, **)	a) bitstuff error
- *			b) no response packet received within the
- *			   prescribed bus turn-around time
- *			c) unknown USB error
- *
- * -EILSEQ (*, **)	a) CRC mismatch
- *			b) no response packet received within the
- *			   prescribed bus turn-around time
- *			c) unknown USB error
- *
- *			Note that often the controller hardware does not
- *			distinguish among cases a), b), and c), so a
- *			driver cannot tell whether there was a protocol
- *			error, a failure to respond (often caused by
- *			device disconnect), or some other fault.
- *
- * -ETIME (**)		No response packet received within the prescribed
- *			bus turn-around time.  This error may instead be
- *			reported as -EPROTO or -EILSEQ.
- *
- * -ETIMEDOUT		Synchronous USB message functions use this code
- *			to indicate timeout expired before the transfer
- *			completed, and no other error was reported by HC.
- *
- * -EPIPE (**)		Endpoint stalled.  For non-control endpoints,
- *			reset this status with usb_clear_halt().
- *
- * -ECOMM		During an IN transfer, the host controller
- *			received data from an endpoint faster than it
- *			could be written to system memory
- *
- * -ENOSR		During an OUT transfer, the host controller
- *			could not retrieve data from system memory fast
- *			enough to keep up with the USB data rate
- *
- * -EOVERFLOW (*)	The amount of data returned by the endpoint was
- *			greater than either the max packet size of the
- *			endpoint or the remaining buffer size.  "Babble".
- *
- * -EREMOTEIO		The data read from the endpoint did not fill the
- *			specified buffer, and URB_SHORT_NOT_OK was set in
- *			urb->transfer_flags.
- *
- * -ENODEV		Device was removed.  Often preceded by a burst of
- *			other errors, since the hub driver doesn't detect
- *			device removal events immediately.
- *
- * -EXDEV		ISO transfer only partially completed
- *			(only set in iso_frame_desc[n].status, not urb->status)
- *
- * -EINVAL		ISO madness, if this happens: Log off and go home
- *
- * -ECONNRESET		URB was asynchronously unlinked by usb_unlink_urb
- *
- * -ESHUTDOWN		The device or host controller has been disabled due
- *			to some problem that could not be worked around,
- *			such as a physical disconnect.
- *
- *
- * (*) Error codes like -EPROTO, -EILSEQ and -EOVERFLOW normally indicate
- * hardware problems such as bad devices (including firmware) or cables.
- *
- * (**) This is also one of several codes that different kinds of host
- * controller use to indicate a transfer has failed because of device
- * disconnect.  In the interval before the hub driver starts disconnect
- * processing, devices may receive such fault reports for every request.
- *
- * See <https://www.kernel.org/doc/Documentation/driver-api/usb/error-codes.rst>
  */
 static void hdm_read_completion(struct urb *urb)
 {
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
