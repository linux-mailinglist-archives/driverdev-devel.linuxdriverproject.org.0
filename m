Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7625A244411
	for <lists+driverdev-devel@lfdr.de>; Fri, 14 Aug 2020 06:02:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D4DC787062;
	Fri, 14 Aug 2020 04:02:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Fwgu3yMY8EhO; Fri, 14 Aug 2020 04:02:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 31A3E87072;
	Fri, 14 Aug 2020 04:02:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1E8561BF980
 for <devel@linuxdriverproject.org>; Fri, 14 Aug 2020 04:02:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 04D6C87040
 for <devel@linuxdriverproject.org>; Fri, 14 Aug 2020 04:02:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cAHQCKLadlil for <devel@linuxdriverproject.org>;
 Fri, 14 Aug 2020 04:01:59 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0214.hostedemail.com
 [216.40.44.214])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7A6C086F13
 for <devel@driverdev.osuosl.org>; Fri, 14 Aug 2020 04:01:59 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay05.hostedemail.com (Postfix) with ESMTP id 02B9B1802BC9A;
 Fri, 14 Aug 2020 04:01:57 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:16:69:196:355:379:960:966:968:973:981:982:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1461:1515:1516:1518:1593:1594:1605:1730:1747:1777:1792:1801:2194:2196:2198:2199:2200:2201:2393:2559:2562:2693:2729:2737:2828:2892:2895:2901:3138:3139:3140:3141:3142:3280:3503:3504:3865:3866:3867:3868:3870:3871:3872:3874:4225:4250:4321:4385:4419:4605:5007:6238:6248:6691:7875:7903:7904:8531:8603:8784:8829:8957:9010:9036:9038:9121:9592:10004:10394:10848:11026:11232:11233:11657:11914:12043:12294:12296:12297:12438:12555:12663:12679:12681:12689:12710:12712:12737:12760:12986:13439:13972:14196:14394:14659:14877:21060:21080:21324:21433:21451:21611:21619:21626:21740:21789:21796:21939:21966:21987:21990:30003:30010:30012:30029:30034:30036:30045:30046:30054:30056:30069:30070:30075:30080,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:2, LUA_SUMMARY:n one
X-HE-Tag: wish35_36180e926ff9
X-Filterd-Recvd-Size: 181894
Received: from XPS-9350.home (unknown [47.151.133.149])
 (Authenticated sender: joe@perches.com)
 by omf13.hostedemail.com (Postfix) with ESMTPA;
 Fri, 14 Aug 2020 04:01:54 +0000 (UTC)
Message-ID: <c79c1d9ee980fba94f2aaee28634b19f9caed5b1.camel@perches.com>
Subject: [PATCH] media: debugging logging cleanup
From: Joe Perches <joe@perches.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Date: Thu, 13 Aug 2020 21:01:52 -0700
In-Reply-To: <20200813121036.126c4797@coco.lan>
References: <cover.1597247164.git.mchehab+huawei@kernel.org>
 <7cb10b3910e9fa3e52d36e4e416030175cc761ab.1597247164.git.mchehab+huawei@kernel.org>
 <6a424468eb61e2eb9b014817819dd4da61f2ada1.camel@perches.com>
 <20200813121036.126c4797@coco.lan>
User-Agent: Evolution 3.36.4-0ubuntu1 
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
Cc: mauro.chehab@huawei.com, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linuxarm@huawei.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Various logging mechanisms are broken with lack of KERN_<LEVEL>
and buffer logging.

Remove unnecessary debug_dump macros and uses for %*ph instead.

Miscellanea:

o Convert deb_<foo> to dbg_<foo> to clarify the debugging use
o Use KERN_DEBUG in dprintk/dbg_<foo> macros
o Use fmt, ... and ##__VA_ARGS__ in macros
o Add missing format newlines
o Use no_printk to validate format and argument when not debugging
o whitespace and line wrapping neatening

Signed-off-by: Joe Perches <joe@perches.com>
---
 drivers/media/common/b2c2/flexcop-fe-tuner.c  |   4 +-
 drivers/media/common/b2c2/flexcop-hw-filter.c |   9 +-
 drivers/media/common/b2c2/flexcop-i2c.c       |  28 ++--
 drivers/media/common/b2c2/flexcop-misc.c      |  14 +-
 drivers/media/common/b2c2/flexcop-sram.c      |   2 +-
 drivers/media/common/b2c2/flexcop.c           |   4 +-
 drivers/media/common/b2c2/flexcop.h           |  24 ++--
 drivers/media/dvb-frontends/bcm3510.c         | 106 ++++++++-------
 drivers/media/dvb-frontends/dib3000mb.c       | 184 +++++++++++++-------------
 drivers/media/dvb-frontends/ix2505v.c         |  29 ++--
 drivers/media/dvb-frontends/m88rs2000.c       |  28 ++--
 drivers/media/dvb-frontends/zl10036.c         |  38 +++---
 drivers/media/pci/b2c2/flexcop-dma.c          |  12 +-
 drivers/media/pci/b2c2/flexcop-pci.c          |  63 ++++-----
 drivers/media/usb/b2c2/flexcop-usb.c          |  82 ++++++------
 drivers/media/usb/dvb-usb-v2/lmedm04.c        |  30 ++---
 drivers/media/usb/dvb-usb/a800.c              |   2 +-
 drivers/media/usb/dvb-usb/af9005-fe.c         | 150 ++++++++++-----------
 drivers/media/usb/dvb-usb/af9005-remote.c     |  20 +--
 drivers/media/usb/dvb-usb/af9005.c            |  86 ++++++------
 drivers/media/usb/dvb-usb/af9005.h            |  18 ++-
 drivers/media/usb/dvb-usb/az6027.c            |  34 ++---
 drivers/media/usb/dvb-usb/az6027.h            |   8 +-
 drivers/media/usb/dvb-usb/cinergyT2-core.c    |  10 +-
 drivers/media/usb/dvb-usb/cinergyT2-fe.c      |   2 +-
 drivers/media/usb/dvb-usb/cinergyT2.h         |  18 +--
 drivers/media/usb/dvb-usb/dib0700.h           |  12 +-
 drivers/media/usb/dvb-usb/dib0700_core.c      |  92 +++++++------
 drivers/media/usb/dvb-usb/dib0700_devices.c   |  80 ++++++-----
 drivers/media/usb/dvb-usb/dibusb-common.c     |   4 +-
 drivers/media/usb/dvb-usb/digitv.c            |   5 +-
 drivers/media/usb/dvb-usb/dtt200u-fe.c        |   2 +-
 drivers/media/usb/dvb-usb/dtt200u.c           |   2 +-
 drivers/media/usb/dvb-usb/dtt200u.h           |   6 +-
 drivers/media/usb/dvb-usb/dvb-usb-common.h    |  27 ++--
 drivers/media/usb/dvb-usb/dvb-usb-dvb.c       |  26 ++--
 drivers/media/usb/dvb-usb/dvb-usb-firmware.c  |   3 +-
 drivers/media/usb/dvb-usb/dvb-usb-init.c      |  16 ++-
 drivers/media/usb/dvb-usb/dvb-usb-remote.c    |  29 ++--
 drivers/media/usb/dvb-usb/dvb-usb-urb.c       |   6 +-
 drivers/media/usb/dvb-usb/dvb-usb.h           |  16 +--
 drivers/media/usb/dvb-usb/dw2102.c            |  31 ++---
 drivers/media/usb/dvb-usb/dw2102.h            |   4 +-
 drivers/media/usb/dvb-usb/gp8psk.c            |  12 +-
 drivers/media/usb/dvb-usb/gp8psk.h            |   9 +-
 drivers/media/usb/dvb-usb/nova-t-usb2.c       |  11 +-
 drivers/media/usb/dvb-usb/technisat-usb2.c    |  31 ++---
 drivers/media/usb/dvb-usb/ttusb2.c            |  23 ++--
 drivers/media/usb/dvb-usb/usb-urb.c           |  40 +++---
 drivers/media/usb/dvb-usb/vp702x-fe.c         |  38 +++---
 drivers/media/usb/dvb-usb/vp702x.c            |  10 +-
 drivers/media/usb/dvb-usb/vp702x.h            |  12 +-
 drivers/media/usb/dvb-usb/vp7045.c            |  29 ++--
 53 files changed, 808 insertions(+), 773 deletions(-)

diff --git a/drivers/media/common/b2c2/flexcop-fe-tuner.c b/drivers/media/common/b2c2/flexcop-fe-tuner.c
index aac1aadb0cb1..12332b2c10ce 100644
--- a/drivers/media/common/b2c2/flexcop-fe-tuner.c
+++ b/drivers/media/common/b2c2/flexcop-fe-tuner.c
@@ -44,7 +44,7 @@ static int flexcop_set_voltage(struct dvb_frontend *fe,
 {
 	struct flexcop_device *fc = fe->dvb->priv;
 	flexcop_ibi_value v;
-	deb_tuner("polarity/voltage = %u\n", voltage);
+	dbg_tuner("polarity/voltage = %u\n", voltage);
 
 	v = fc->read_ibi_reg(fc, misc_204);
 	switch (voltage) {
@@ -86,7 +86,7 @@ static int flexcop_set_tone(struct dvb_frontend *fe, enum fe_sec_tone_mode tone)
 	flexcop_ibi_value v;
 	u16 ax;
 	v.raw = 0;
-	deb_tuner("tone = %u\n",tone);
+	dbg_tuner("tone = %u\n", tone);
 
 	switch (tone) {
 	case SEC_TONE_ON:
diff --git a/drivers/media/common/b2c2/flexcop-hw-filter.c b/drivers/media/common/b2c2/flexcop-hw-filter.c
index 335f30a54ba8..6706239ab896 100644
--- a/drivers/media/common/b2c2/flexcop-hw-filter.c
+++ b/drivers/media/common/b2c2/flexcop-hw-filter.c
@@ -9,7 +9,7 @@
 static void flexcop_rcv_data_ctrl(struct flexcop_device *fc, int onoff)
 {
 	flexcop_set_ibi_value(ctrl_208, Rcv_Data_sig, onoff);
-	deb_ts("rcv_data is now: '%s'\n", onoff ? "on" : "off");
+	dbg_ts("rcv_data is now: '%s'\n", onoff ? "on" : "off");
 }
 
 void flexcop_smc_ctrl(struct flexcop_device *fc, int onoff)
@@ -115,8 +115,8 @@ static void flexcop_pid_control(struct flexcop_device *fc,
 	if (pid == 0x2000)
 		return;
 
-	deb_ts("setting pid: %5d %04x at index %d '%s'\n",
-			pid, pid, index, onoff ? "on" : "off");
+	dbg_ts("setting pid: %5d %04x at index %d '%s'\n",
+	       pid, pid, index, onoff ? "on" : "off");
 
 	/* First 6 can be buggy - skip over them if option set */
 	if (fc->skip_6_hw_pid_filter)
@@ -164,7 +164,8 @@ static void flexcop_pid_control(struct flexcop_device *fc,
 static int flexcop_toggle_fullts_streaming(struct flexcop_device *fc, int onoff)
 {
 	if (fc->fullts_streaming_state != onoff) {
-		deb_ts("%s full TS transfer\n",onoff ? "enabling" : "disabling");
+		dbg_ts("%s full TS transfer\n",
+		       onoff ? "enabling" : "disabling");
 		flexcop_pid_group_filter(fc, 0, 0x1fe0 * (!onoff));
 		flexcop_pid_group_filter_ctrl(fc, onoff);
 		fc->fullts_streaming_state = onoff;
diff --git a/drivers/media/common/b2c2/flexcop-i2c.c b/drivers/media/common/b2c2/flexcop-i2c.c
index 1f1eaa807811..a85985b98766 100644
--- a/drivers/media/common/b2c2/flexcop-i2c.c
+++ b/drivers/media/common/b2c2/flexcop-i2c.c
@@ -15,7 +15,7 @@ static int flexcop_i2c_operation(struct flexcop_device *fc,
 	flexcop_ibi_value r;
 
 	r100->tw_sm_c_100.working_start = 1;
-	deb_i2c("r100 before: %08x\n",r100->raw);
+	dbg_i2c("r100 before: %08x\n", r100->raw);
 
 	fc->write_ibi_reg(fc, tw_sm_c_100, ibi_zero);
 	fc->write_ibi_reg(fc, tw_sm_c_100, *r100); /* initiating i2c operation */
@@ -26,15 +26,15 @@ static int flexcop_i2c_operation(struct flexcop_device *fc,
 		if (!r.tw_sm_c_100.no_base_addr_ack_error) {
 			if (r.tw_sm_c_100.st_done) {
 				*r100 = r;
-				deb_i2c("i2c success\n");
+				dbg_i2c("i2c success\n");
 				return 0;
 			}
 		} else {
-			deb_i2c("suffering from an i2c ack_error\n");
+			dbg_i2c("suffering from an i2c ack_error\n");
 			return -EREMOTEIO;
 		}
 	}
-	deb_i2c("tried %d times i2c operation, never finished or too many ack errors.\n",
+	dbg_i2c("tried %d times i2c operation, never finished or too many ack errors\n",
 		i);
 	return -EREMOTEIO;
 }
@@ -61,12 +61,12 @@ static int flexcop_i2c_read4(struct flexcop_i2c_adapter *i2c,
 
 	ret = flexcop_i2c_operation(i2c->fc, &r100);
 	if (ret != 0) {
-		deb_i2c("Retrying operation\n");
+		dbg_i2c("Retrying operation\n");
 		r100.tw_sm_c_100.no_base_addr_ack_error = i2c->no_base_addr;
 		ret = flexcop_i2c_operation(i2c->fc, &r100);
 	}
 	if (ret != 0) {
-		deb_i2c("read failed. %d\n", ret);
+		dbg_i2c("read failed. %d\n", ret);
 		return ret;
 	}
 
@@ -74,7 +74,7 @@ static int flexcop_i2c_read4(struct flexcop_i2c_adapter *i2c,
 
 	if (len > 0) {
 		r104 = i2c->fc->read_ibi_reg(i2c->fc, tw_sm_c_104);
-		deb_i2c("read: r100: %08x, r104: %08x\n", r100.raw, r104.raw);
+		dbg_i2c("read: r100: %08x, r104: %08x\n", r100.raw, r104.raw);
 
 		/* there is at least one more byte, otherwise we wouldn't be here */
 		buf[1] = r104.tw_sm_c_104.data2_reg;
@@ -97,7 +97,7 @@ static int flexcop_i2c_write4(struct flexcop_device *fc,
 	r104.tw_sm_c_104.data3_reg = len > 1 ? buf[2] : 0;
 	r104.tw_sm_c_104.data4_reg = len > 2 ? buf[3] : 0;
 
-	deb_i2c("write: r100: %08x, r104: %08x\n", r100.raw, r104.raw);
+	dbg_i2c("write: r100: %08x, r104: %08x\n", r100.raw, r104.raw);
 
 	/* write the additional i2c data before doing the actual i2c operation */
 	fc->write_ibi_reg(fc, tw_sm_c_104, r104);
@@ -116,7 +116,7 @@ int flexcop_i2c_request(struct flexcop_i2c_adapter *i2c,
 	u16 bytes_to_transfer;
 	flexcop_ibi_value r100;
 
-	deb_i2c("port %d %s(%02x): register %02x, size: %d\n",
+	dbg_i2c("port %d %s(%02x): register %02x, size: %d\n",
 		i2c->port,
 		op == FC_READ ? "rd" : "wr",
 		chipaddr, start_addr, size);
@@ -153,10 +153,10 @@ int flexcop_i2c_request(struct flexcop_i2c_adapter *i2c,
 		addr += bytes_to_transfer;
 		len  -= bytes_to_transfer;
 	}
-	deb_i2c_dump("port %d %s(%02x): register %02x: %*ph\n",
-		i2c->port,
-		op == FC_READ ? "rd" : "wr",
-		chipaddr, start_addr, size, buf);
+	dbg_i2c_dump("port %d %s(%02x): register %02x: %*ph\n",
+		     i2c->port,
+		     op == FC_READ ? "rd" : "wr",
+		     chipaddr, start_addr, size, buf);
 
 	return 0;
 }
@@ -192,7 +192,7 @@ static int flexcop_master_xfer(struct i2c_adapter *i2c_adap,
 					msgs[i].buf[0], &msgs[i].buf[1],
 					msgs[i].len - 1);
 		if (ret < 0) {
-			deb_i2c("i2c master_xfer failed");
+			dbg_i2c("i2c master_xfer failed");
 			break;
 		}
 	}
diff --git a/drivers/media/common/b2c2/flexcop-misc.c b/drivers/media/common/b2c2/flexcop-misc.c
index 83d01d3a81cc..eb3e981ea15c 100644
--- a/drivers/media/common/b2c2/flexcop-misc.c
+++ b/drivers/media/common/b2c2/flexcop-misc.c
@@ -12,15 +12,15 @@ void flexcop_determine_revision(struct flexcop_device *fc)
 
 	switch (v.misc_204.Rev_N_sig_revision_hi) {
 	case 0x2:
-		deb_info("found a FlexCopII.\n");
+		dbg_info("found a FlexCopII\n");
 		fc->rev = FLEXCOP_II;
 		break;
 	case 0x3:
-		deb_info("found a FlexCopIIb.\n");
+		dbg_info("found a FlexCopIIb\n");
 		fc->rev = FLEXCOP_IIB;
 		break;
 	case 0x0:
-		deb_info("found a FlexCopIII.\n");
+		dbg_info("found a FlexCopIII\n");
 		fc->rev = FLEXCOP_III;
 		break;
 	default:
@@ -30,9 +30,9 @@ void flexcop_determine_revision(struct flexcop_device *fc)
 	}
 
 	if ((fc->has_32_hw_pid_filter = v.misc_204.Rev_N_sig_caps))
-		deb_info("this FlexCop has the additional 32 hardware pid filter.\n");
+		dbg_info("this FlexCop has the additional 32 hardware pid filter\n");
 	else
-		deb_info("this FlexCop has the 6 basic main hardware pid filter.\n");
+		dbg_info("this FlexCop has the 6 basic main hardware pid filter\n");
 	/* bus parts have to decide if hw pid filtering is used or not. */
 }
 
@@ -78,8 +78,8 @@ void flexcop_dump_reg(struct flexcop_device *fc,
 	int i;
 	for (i = 0; i < num; i++) {
 		v = fc->read_ibi_reg(fc, reg+4*i);
-		deb_rdump("0x%03x: %08x, ", reg+4*i, v.raw);
+		dbg_rdump("0x%03x: %08x, ", reg + 4 * i, v.raw);
 	}
-	deb_rdump("\n");
+	dbg_rdump("\n");
 }
 EXPORT_SYMBOL(flexcop_dump_reg);
diff --git a/drivers/media/common/b2c2/flexcop-sram.c b/drivers/media/common/b2c2/flexcop-sram.c
index d97962eb0112..3089d3b88a5e 100644
--- a/drivers/media/common/b2c2/flexcop-sram.c
+++ b/drivers/media/common/b2c2/flexcop-sram.c
@@ -38,7 +38,7 @@ int flexcop_sram_set_dest(struct flexcop_device *fc, flexcop_sram_dest_t dest,
 		err("SRAM destination target to available on FlexCopII(b)\n");
 		return -EINVAL;
 	}
-	deb_sram("sram dest: %x target: %x\n", dest, target);
+	dbg_sram("sram dest: %x target: %x\n", dest, target);
 
 	if (dest & FC_SRAM_DEST_NET)
 		v.sram_dest_reg_714.NET_Dest = target;
diff --git a/drivers/media/common/b2c2/flexcop.c b/drivers/media/common/b2c2/flexcop.c
index cbaa61f10d5f..dd78827fb7cd 100644
--- a/drivers/media/common/b2c2/flexcop.c
+++ b/drivers/media/common/b2c2/flexcop.c
@@ -155,7 +155,7 @@ static void flexcop_dvb_exit(struct flexcop_device *fc)
 		dvb_dmxdev_release(&fc->dmxdev);
 		dvb_dmx_release(&fc->demux);
 		dvb_unregister_adapter(&fc->dvb_adapter);
-		deb_info("deinitialized dvb stuff\n");
+		dbg_info("deinitialized dvb stuff\n");
 	}
 	fc->init_state &= ~FC_STATE_DVB_INIT;
 }
@@ -210,7 +210,7 @@ void flexcop_reset_block_300(struct flexcop_device *fc)
 	flexcop_ibi_value v208_save = fc->read_ibi_reg(fc, ctrl_208),
 			  v210 = fc->read_ibi_reg(fc, sw_reset_210);
 
-	deb_rdump("208: %08x, 210: %08x\n", v208_save.raw, v210.raw);
+	dbg_rdump("208: %08x, 210: %08x\n", v208_save.raw, v210.raw);
 	fc->write_ibi_reg(fc,ctrl_208,ibi_zero);
 
 	v210.sw_reset_210.reset_block_300 = 1;
diff --git a/drivers/media/common/b2c2/flexcop.h b/drivers/media/common/b2c2/flexcop.h
index 486fe2380b92..f1149a722187 100644
--- a/drivers/media/common/b2c2/flexcop.h
+++ b/drivers/media/common/b2c2/flexcop.h
@@ -14,18 +14,22 @@ extern int b2c2_flexcop_debug;
 
 /* debug */
 #ifdef CONFIG_DVB_B2C2_FLEXCOP_DEBUG
-#define dprintk(level,args...) \
-	do { if ((b2c2_flexcop_debug & level)) printk(args); } while (0)
+#define dprintk(level, fmt, ...)					\
+do {									\
+	if ((b2c2_flexcop_debug & (level)))				\
+		printk(KERN_DEBUG fmt, ##__VA_ARGS__);			\
+} while (0)
 #else
-#define dprintk(level,args...)
+#define dprintk(level, fmt, ...)					\
+	no_printk(KERN_DEBUG fmt, ##__VA_ARGS__)
 #endif
 
-#define deb_info(args...) dprintk(0x01, args)
-#define deb_tuner(args...) dprintk(0x02, args)
-#define deb_i2c(args...) dprintk(0x04, args)
-#define deb_ts(args...) dprintk(0x08, args)
-#define deb_sram(args...) dprintk(0x10, args)
-#define deb_rdump(args...) dprintk(0x20, args)
-#define deb_i2c_dump(args...) dprintk(0x40, args)
+#define dbg_info(fmt, ...)	dprintk(0x01, fmt, ##__VA_ARGS__)
+#define dbg_tuner(fmt, ...)	dprintk(0x02, fmt, ##__VA_ARGS__)
+#define dbg_i2c(fmt, ...)	dprintk(0x04, fmt, ##__VA_ARGS__)
+#define dbg_ts(fmt, ...)	dprintk(0x08, fmt, ##__VA_ARGS__)
+#define dbg_sram(fmt, ...)	dprintk(0x10, fmt, ##__VA_ARGS__)
+#define dbg_rdump(fmt, ...)	dprintk(0x20, fmt, ##__VA_ARGS__)
+#define dbg_i2c_dump(fmt, ...)	dprintk(0x40, fmt, ##__VA_ARGS__)
 
 #endif
diff --git a/drivers/media/dvb-frontends/bcm3510.c b/drivers/media/dvb-frontends/bcm3510.c
index e92542b92d34..15a0ac2f57ea 100644
--- a/drivers/media/dvb-frontends/bcm3510.c
+++ b/drivers/media/dvb-frontends/bcm3510.c
@@ -67,15 +67,15 @@ static int debug;
 module_param(debug, int, 0644);
 MODULE_PARM_DESC(debug, "set debugging level (1=info,2=i2c (|-able)).");
 
-#define dprintk(level,x...) if (level & debug) printk(x)
-#define dbufout(b,l,m) {\
-	    int i; \
-	    for (i = 0; i < l; i++) \
-		m("%02x ",b[i]); \
-}
-#define deb_info(args...) dprintk(0x01,args)
-#define deb_i2c(args...)  dprintk(0x02,args)
-#define deb_hab(args...)  dprintk(0x04,args)
+#define dprintk(level, fmt, ...)					\
+do {									\
+	if (debug & (level))						\
+		printk(KERN_DEBUG fmt, ##__VA_ARGS__);			\
+} while (0)
+
+#define dbg_info(fmt, ...)	dprintk(0x01, fmt, ##__VA_ARGS__)
+#define dbg_i2c(fmt, ...)	dprintk(0x02, fmt, ##__VA_ARGS__)
+#define dbg_hab(fmt, ...)	dprintk(0x04, fmt, ##__VA_ARGS__)
 
 /* transfer functions */
 static int bcm3510_writebytes (struct bcm3510_state *state, u8 reg, u8 *buf, u8 len)
@@ -87,14 +87,12 @@ static int bcm3510_writebytes (struct bcm3510_state *state, u8 reg, u8 *buf, u8
 	b[0] = reg;
 	memcpy(&b[1],buf,len);
 
-	deb_i2c("i2c wr %02x: ",reg);
-	dbufout(buf,len,deb_i2c);
-	deb_i2c("\n");
+	dbg_i2c("i2c wr %02x: %*ph\n", reg, (int)len, buf);
 
 	if ((err = i2c_transfer (state->i2c, &msg, 1)) != 1) {
 
-		deb_info("%s: i2c write error (addr %02x, reg %02x, err == %i)\n",
-			__func__, state->config->demod_address, reg,  err);
+		dbg_info("%s: i2c write error (addr %02x, reg %02x, err == %i)\n",
+			 __func__, state->config->demod_address, reg,  err);
 		return -EREMOTEIO;
 	}
 
@@ -112,13 +110,11 @@ static int bcm3510_readbytes (struct bcm3510_state *state, u8 reg, u8 *buf, u8 l
 	memset(buf,0,len);
 
 	if ((err = i2c_transfer (state->i2c, msg, 2)) != 2) {
-		deb_info("%s: i2c read error (addr %02x, reg %02x, err == %i)\n",
-			__func__, state->config->demod_address, reg,  err);
+		dbg_info("%s: i2c read error (addr %02x, reg %02x, err == %i)\n",
+			 __func__, state->config->demod_address, reg,  err);
 		return -EREMOTEIO;
 	}
-	deb_i2c("i2c rd %02x: ",reg);
-	dbufout(buf,len,deb_i2c);
-	deb_i2c("\n");
+	dbg_i2c("i2c rd %02x: %*ph\n", reg, (int)len, buf);
 
 	return 0;
 }
@@ -162,7 +158,7 @@ static int bcm3510_hab_send_request(struct bcm3510_state *st, u8 *buf, int len)
 	if ((ret = bcm3510_readB(st,0xa8,&v)) < 0)
 		return ret;
 	if (v.HABSTAT_a8.HABR) {
-		deb_info("HAB is running already - clearing it.\n");
+		dbg_info("HAB is running already - clearing it\n");
 		v.HABSTAT_a8.HABR = 0;
 		bcm3510_writeB(st,0xa8,v);
 //		return -EBUSY;
@@ -189,7 +185,7 @@ static int bcm3510_hab_send_request(struct bcm3510_state *st, u8 *buf, int len)
 /* Polling method: Wait until the AP finishes processing the HAB request */
 	t = jiffies + 1*HZ;
 	while (time_before(jiffies, t)) {
-		deb_info("waiting for HAB to complete\n");
+		dbg_info("waiting for HAB to complete\n");
 		msleep(10);
 		if ((ret = bcm3510_readB(st,0xa8,&v)) < 0)
 			return ret;
@@ -198,7 +194,7 @@ static int bcm3510_hab_send_request(struct bcm3510_state *st, u8 *buf, int len)
 			return 0;
 	}
 
-	deb_info("send_request execution timed out.\n");
+	dbg_info("send_request execution timed out\n");
 	return -ETIMEDOUT;
 }
 
@@ -208,12 +204,12 @@ static int bcm3510_do_hab_cmd(struct bcm3510_state *st, u8 cmd, u8 msgid, u8 *ob
 	int ret = 0;
 
 	if (ilen + 2 > sizeof(ib)) {
-		deb_hab("do_hab_cmd: ilen=%d is too big!\n", ilen);
+		dbg_hab("do_hab_cmd: ilen=%d is too big!\n", ilen);
 		return -EINVAL;
 	}
 
 	if (olen + 2 > sizeof(ob)) {
-		deb_hab("do_hab_cmd: olen=%d is too big!\n", olen);
+		dbg_hab("do_hab_cmd: olen=%d is too big!\n", olen);
 		return -EINVAL;
 	}
 
@@ -221,9 +217,7 @@ static int bcm3510_do_hab_cmd(struct bcm3510_state *st, u8 cmd, u8 msgid, u8 *ob
 	ob[1] = msgid;
 	memcpy(&ob[2],obuf,olen);
 
-	deb_hab("hab snd: ");
-	dbufout(ob,olen+2,deb_hab);
-	deb_hab("\n");
+	dbg_hab("hab snd: %*ph\n", olen + 2, ob);
 
 	if (mutex_lock_interruptible(&st->hab_mutex) < 0)
 		return -EAGAIN;
@@ -232,9 +226,7 @@ static int bcm3510_do_hab_cmd(struct bcm3510_state *st, u8 cmd, u8 msgid, u8 *ob
 		(ret = bcm3510_hab_get_response(st, ib, ilen+2)) < 0)
 		goto error;
 
-	deb_hab("hab get: ");
-	dbufout(ib,ilen+2,deb_hab);
-	deb_hab("\n");
+	dbg_hab("hab get: %*ph\n", ilen + 2, ib);
 
 	memcpy(ibuf,&ib[2],ilen);
 error:
@@ -254,7 +246,7 @@ static int bcm3510_is_ap_ready(struct bcm3510_state *st)
 		return ret;
 
 	if (ap.APSTAT1_a2.RESET || ap.APSTAT1_a2.IDLE || ap.APSTAT1_a2.STOP || hab.HABSTAT_a8.HABR) {
-		deb_info("AP is busy\n");
+		dbg_info("AP is busy\n");
 		return -EBUSY;
 	}
 
@@ -309,7 +301,7 @@ static int bcm3510_read_status(struct dvb_frontend *fe, enum fe_status *status)
 	else /* more frequently checks if no lock has been achieved yet */
 		st->status_check_interval = 500;
 
-	deb_info("real_status: %02x\n",*status);
+	dbg_info("real_status: %02x\n", *status);
 	return 0;
 }
 
@@ -454,10 +446,11 @@ static int bcm3510_set_freq(struct bcm3510_state* st,u32 freq)
 	u8 bc,a;
 	u16 n;
 	s32 YIntercept,Tfvco1;
+	u32 ofreq;
 
 	freq /= 1000;
+	ofreq = freq;
 
-	deb_info("%dkHz:",freq);
 	/* set Band Switch */
 	if (freq <= 168000)
 		bc = 0x1c;
@@ -485,7 +478,7 @@ static int bcm3510_set_freq(struct bcm3510_state* st,u32 freq)
 	n = Tfvco1 >> 6;
 	a = Tfvco1 & 0x3f;
 
-	deb_info(" BC1_2_3_4: %x, N: %x A: %x\n", bc, n, a);
+	dbg_info("%dkHz: BC1_2_3_4: %x, N: %x A: %x\n", ofreq, bc, n, a);
 	if (n >= 16 && n <= 2047)
 		return bcm3510_tuner_cmd(st,bc,n,a);
 
@@ -635,26 +628,28 @@ static int bcm3510_download_firmware(struct dvb_frontend* fe)
 	const u8 *b;
 	int ret,i;
 
-	deb_info("requesting firmware\n");
+	dbg_info("requesting firmware\n");
 	if ((ret = st->config->request_firmware(fe, &fw, BCM3510_DEFAULT_FIRMWARE)) < 0) {
-		err("could not load firmware (%s): %d",BCM3510_DEFAULT_FIRMWARE,ret);
+		err("could not load firmware (%s): %d\n",
+		    BCM3510_DEFAULT_FIRMWARE, ret);
 		return ret;
 	}
-	deb_info("got firmware: %zu\n", fw->size);
+	dbg_info("got firmware: %zu\n", fw->size);
 
 	b = fw->data;
 	for (i = 0; i < fw->size;) {
 		addr = le16_to_cpu(*((__le16 *)&b[i]));
 		len  = le16_to_cpu(*((__le16 *)&b[i+2]));
-		deb_info("firmware chunk, addr: 0x%04x, len: 0x%04x, total length: 0x%04zx\n",addr,len,fw->size);
+		dbg_info("firmware chunk, addr: 0x%04x, len: 0x%04x, total length: 0x%04zx\n",
+			 addr, len, fw->size);
 		if ((ret = bcm3510_write_ram(st,addr,&b[i+4],len)) < 0) {
-			err("firmware download failed: %d\n",ret);
+			err("firmware download failed: %d\n", ret);
 			return ret;
 		}
 		i += 4 + len;
 	}
 	release_firmware(fw);
-	deb_info("firmware download successfully completed\n");
+	dbg_info("firmware download successfully completed\n");
 	return 0;
 }
 
@@ -663,15 +658,16 @@ static int bcm3510_check_firmware_version(struct bcm3510_state *st)
 	struct bcm3510_hab_cmd_get_version_info ver;
 	bcm3510_do_hab_cmd(st,CMD_GET_VERSION_INFO,MSGID_GET_VERSION_INFO,NULL,0,(u8*)&ver,sizeof(ver));
 
-	deb_info("Version information: 0x%02x 0x%02x 0x%02x 0x%02x\n",
-		ver.microcode_version, ver.script_version, ver.config_version, ver.demod_version);
+	dbg_info("Version information: 0x%02x 0x%02x 0x%02x 0x%02x\n",
+		 ver.microcode_version, ver.script_version,
+		 ver.config_version, ver.demod_version);
 
 	if (ver.script_version == BCM3510_DEF_SCRIPT_VERSION &&
 		ver.config_version == BCM3510_DEF_CONFIG_VERSION &&
 		ver.demod_version  == BCM3510_DEF_DEMOD_VERSION)
 		return 0;
 
-	deb_info("version check failed\n");
+	dbg_info("version check failed\n");
 	return -ENODEV;
 }
 
@@ -695,7 +691,7 @@ static int bcm3510_reset(struct bcm3510_state *st)
 		if (v.APSTAT1_a2.RESET)
 			return 0;
 	}
-	deb_info("reset timed out\n");
+	dbg_info("reset timed out\n");
 	return -ETIMEDOUT;
 }
 
@@ -719,7 +715,7 @@ static int bcm3510_clear_reset(struct bcm3510_state *st)
 		if (!v.APSTAT1_a2.RESET)
 			return 0;
 	}
-	deb_info("reset clear timed out\n");
+	dbg_info("reset clear timed out\n");
 	return -ETIMEDOUT;
 }
 
@@ -732,21 +728,21 @@ static int bcm3510_init_cold(struct bcm3510_state *st)
 	if ((ret = bcm3510_readB(st,0xa2,&v)) < 0)
 		return ret;
 	if (v.APSTAT1_a2.RUN) {
-		deb_info("AP is already running - firmware already loaded.\n");
+		dbg_info("AP is already running - firmware already loaded\n");
 		return 0;
 	}
 
-	deb_info("reset?\n");
+	dbg_info("reset?\n");
 	if ((ret = bcm3510_reset(st)) < 0)
 		return ret;
 
-	deb_info("tristate?\n");
+	dbg_info("tristate?\n");
 	/* tri-state */
 	v.TSTCTL_2e.CTL = 0;
 	if ((ret = bcm3510_writeB(st,0x2e,v)) < 0)
 		return ret;
 
-	deb_info("firmware?\n");
+	dbg_info("firmware?\n");
 	if ((ret = bcm3510_download_firmware(&st->frontend)) < 0 ||
 		(ret = bcm3510_clear_reset(st)) < 0)
 		return ret;
@@ -766,16 +762,16 @@ static int bcm3510_init(struct dvb_frontend* fe)
 	if ((ret = bcm3510_readB(st,0xca,&j)) < 0)
 		return ret;
 
-	deb_info("JDEC: %02x\n",j.raw);
+	dbg_info("JDEC: %02x\n", j.raw);
 
 	switch (j.JDEC_ca.JDEC) {
 		case JDEC_WAIT_AT_RAM:
-			deb_info("attempting to download firmware\n");
+			dbg_info("attempting to download firmware\n");
 			if ((ret = bcm3510_init_cold(st)) < 0)
 				return ret;
 			/* fall-through */
 		case JDEC_EEPROM_LOAD_WAIT:
-			deb_info("firmware is loaded\n");
+			dbg_info("firmware is loaded\n");
 			bcm3510_check_firmware_version(st);
 			break;
 		default:
@@ -818,13 +814,15 @@ struct dvb_frontend* bcm3510_attach(const struct bcm3510_config *config,
 	if ((ret = bcm3510_readB(state,0xe0,&v)) < 0)
 		goto error;
 
-	deb_info("Revision: 0x%1x, Layer: 0x%1x.\n",v.REVID_e0.REV,v.REVID_e0.LAYER);
+	dbg_info("Revision: 0x%1x, Layer: 0x%1x\n",
+		 v.REVID_e0.REV, v.REVID_e0.LAYER);
 
 	if ((v.REVID_e0.REV != 0x1 && v.REVID_e0.LAYER != 0xb) && /* cold */
 		(v.REVID_e0.REV != 0x8 && v.REVID_e0.LAYER != 0x0))   /* warm */
 		goto error;
 
-	info("Revision: 0x%1x, Layer: 0x%1x.",v.REVID_e0.REV,v.REVID_e0.LAYER);
+	info("Revision: 0x%1x, Layer: 0x%1x\n",
+	     v.REVID_e0.REV, v.REVID_e0.LAYER);
 
 	bcm3510_reset(state);
 
diff --git a/drivers/media/dvb-frontends/dib3000mb.c b/drivers/media/dvb-frontends/dib3000mb.c
index 0f0480d8576d..8c1b76b41473 100644
--- a/drivers/media/dvb-frontends/dib3000mb.c
+++ b/drivers/media/dvb-frontends/dib3000mb.c
@@ -40,13 +40,12 @@ static int debug;
 module_param(debug, int, 0644);
 MODULE_PARM_DESC(debug, "set debugging level (1=info,2=xfer,4=setfe,8=getfe (|-able)).");
 
-#define deb_info(args...) dprintk(0x01, args)
-#define deb_i2c(args...)  dprintk(0x02, args)
-#define deb_srch(args...) dprintk(0x04, args)
-#define deb_info(args...) dprintk(0x01, args)
-#define deb_xfer(args...) dprintk(0x02, args)
-#define deb_setf(args...) dprintk(0x04, args)
-#define deb_getf(args...) dprintk(0x08, args)
+#define dbg_info(fmt, ...)	dprintk(0x01, fmt, ##__VA_ARGS__)
+#define dbg_i2c(fmt, ...)	dprintk(0x02, fmt, ##__VA_ARGS__)
+#define dbg_xfer(fmt, ...)	dprintk(0x02, fmt, ##__VA_ARGS__)
+#define dbg_srch(fmt, ...)	dprintk(0x04, fmt, ##__VA_ARGS__)
+#define dbg_setf(fmt, ...)	dprintk(0x04, fmt, ##__VA_ARGS__)
+#define dbg_getf(fmt, ...)	dprintk(0x08, fmt, ##__VA_ARGS__)
 
 static int dib3000_read_reg(struct dib3000_state *state, u16 reg)
 {
@@ -58,10 +57,10 @@ static int dib3000_read_reg(struct dib3000_state *state, u16 reg)
 	};
 
 	if (i2c_transfer(state->i2c, msg, 2) != 2)
-		deb_i2c("i2c read error\n");
+		dbg_i2c("i2c read error\n");
 
-	deb_i2c("reading i2c bus (reg: %5d 0x%04x, val: %5d 0x%04x)\n",reg,reg,
-			(rb[0] << 8) | rb[1],(rb[0] << 8) | rb[1]);
+	dbg_i2c("reading i2c bus (reg: %5d 0x%04x, val: %5d 0x%04x)\n",
+		reg, reg, (rb[0] << 8) | rb[1], (rb[0] << 8) | rb[1]);
 
 	return (rb[0] << 8) | rb[1];
 }
@@ -75,7 +74,8 @@ static int dib3000_write_reg(struct dib3000_state *state, u16 reg, u16 val)
 	struct i2c_msg msg[] = {
 		{ .addr = state->config.demod_address, .flags = 0, .buf = b, .len = 4 }
 	};
-	deb_i2c("writing i2c bus (reg: %5d 0x%04x, val: %5d 0x%04x)\n",reg,reg,val,val);
+	dbg_i2c("writing i2c bus (reg: %5d 0x%04x, val: %5d 0x%04x)\n",
+		reg, reg, val, val);
 
 	return i2c_transfer(state->i2c,msg, 1) != 1 ? -EREMOTEIO : 0;
 }
@@ -84,14 +84,14 @@ static int dib3000_search_status(u16 irq,u16 lock)
 {
 	if (irq & 0x02) {
 		if (lock & 0x01) {
-			deb_srch("auto search succeeded\n");
+			dbg_srch("auto search succeeded\n");
 			return 1; // auto search succeeded
 		} else {
-			deb_srch("auto search not successful\n");
+			dbg_srch("auto search not successful\n");
 			return 0; // auto search failed
 		}
 	} else if (irq & 0x01)  {
-		deb_srch("auto search failed\n");
+		dbg_srch("auto search failed\n");
 		return 0; // auto search failed
 	}
 	return -1; // try again
@@ -140,24 +140,24 @@ static int dib3000mb_set_frontend(struct dvb_frontend *fe, int tuner)
 			case 0:
 				return -EOPNOTSUPP;
 			default:
-				pr_err("unknown bandwidth value.\n");
+				pr_err("unknown bandwidth value\n");
 				return -EINVAL;
 		}
-		deb_setf("bandwidth: %d MHZ\n", c->bandwidth_hz / 1000000);
+		dbg_setf("bandwidth: %d MHZ\n", c->bandwidth_hz / 1000000);
 	}
 	wr(DIB3000MB_REG_LOCK1_MASK, DIB3000MB_LOCK1_SEARCH_4);
 
 	switch (c->transmission_mode) {
 		case TRANSMISSION_MODE_2K:
-			deb_setf("transmission mode: 2k\n");
+			dbg_setf("transmission mode: 2k\n");
 			wr(DIB3000MB_REG_FFT, DIB3000_TRANSMISSION_MODE_2K);
 			break;
 		case TRANSMISSION_MODE_8K:
-			deb_setf("transmission mode: 8k\n");
+			dbg_setf("transmission mode: 8k\n");
 			wr(DIB3000MB_REG_FFT, DIB3000_TRANSMISSION_MODE_8K);
 			break;
 		case TRANSMISSION_MODE_AUTO:
-			deb_setf("transmission mode: auto\n");
+			dbg_setf("transmission mode: auto\n");
 			break;
 		default:
 			return -EINVAL;
@@ -165,23 +165,23 @@ static int dib3000mb_set_frontend(struct dvb_frontend *fe, int tuner)
 
 	switch (c->guard_interval) {
 		case GUARD_INTERVAL_1_32:
-			deb_setf("guard 1_32\n");
+			dbg_setf("guard 1_32\n");
 			wr(DIB3000MB_REG_GUARD_TIME, DIB3000_GUARD_TIME_1_32);
 			break;
 		case GUARD_INTERVAL_1_16:
-			deb_setf("guard 1_16\n");
+			dbg_setf("guard 1_16\n");
 			wr(DIB3000MB_REG_GUARD_TIME, DIB3000_GUARD_TIME_1_16);
 			break;
 		case GUARD_INTERVAL_1_8:
-			deb_setf("guard 1_8\n");
+			dbg_setf("guard 1_8\n");
 			wr(DIB3000MB_REG_GUARD_TIME, DIB3000_GUARD_TIME_1_8);
 			break;
 		case GUARD_INTERVAL_1_4:
-			deb_setf("guard 1_4\n");
+			dbg_setf("guard 1_4\n");
 			wr(DIB3000MB_REG_GUARD_TIME, DIB3000_GUARD_TIME_1_4);
 			break;
 		case GUARD_INTERVAL_AUTO:
-			deb_setf("guard auto\n");
+			dbg_setf("guard auto\n");
 			break;
 		default:
 			return -EINVAL;
@@ -189,14 +189,14 @@ static int dib3000mb_set_frontend(struct dvb_frontend *fe, int tuner)
 
 	switch (c->inversion) {
 		case INVERSION_OFF:
-			deb_setf("inversion off\n");
+			dbg_setf("inversion off\n");
 			wr(DIB3000MB_REG_DDS_INV, DIB3000_DDS_INVERSION_OFF);
 			break;
 		case INVERSION_AUTO:
-			deb_setf("inversion auto\n");
+			dbg_setf("inversion auto\n");
 			break;
 		case INVERSION_ON:
-			deb_setf("inversion on\n");
+			dbg_setf("inversion on\n");
 			wr(DIB3000MB_REG_DDS_INV, DIB3000_DDS_INVERSION_ON);
 			break;
 		default:
@@ -205,15 +205,15 @@ static int dib3000mb_set_frontend(struct dvb_frontend *fe, int tuner)
 
 	switch (c->modulation) {
 		case QPSK:
-			deb_setf("modulation: qpsk\n");
+			dbg_setf("modulation: qpsk\n");
 			wr(DIB3000MB_REG_QAM, DIB3000_CONSTELLATION_QPSK);
 			break;
 		case QAM_16:
-			deb_setf("modulation: qam16\n");
+			dbg_setf("modulation: qam16\n");
 			wr(DIB3000MB_REG_QAM, DIB3000_CONSTELLATION_16QAM);
 			break;
 		case QAM_64:
-			deb_setf("modulation: qam64\n");
+			dbg_setf("modulation: qam64\n");
 			wr(DIB3000MB_REG_QAM, DIB3000_CONSTELLATION_64QAM);
 			break;
 		case QAM_AUTO:
@@ -223,22 +223,22 @@ static int dib3000mb_set_frontend(struct dvb_frontend *fe, int tuner)
 	}
 	switch (c->hierarchy) {
 		case HIERARCHY_NONE:
-			deb_setf("hierarchy: none\n");
+			dbg_setf("hierarchy: none\n");
 			/* fall through */
 		case HIERARCHY_1:
-			deb_setf("hierarchy: alpha=1\n");
+			dbg_setf("hierarchy: alpha=1\n");
 			wr(DIB3000MB_REG_VIT_ALPHA, DIB3000_ALPHA_1);
 			break;
 		case HIERARCHY_2:
-			deb_setf("hierarchy: alpha=2\n");
+			dbg_setf("hierarchy: alpha=2\n");
 			wr(DIB3000MB_REG_VIT_ALPHA, DIB3000_ALPHA_2);
 			break;
 		case HIERARCHY_4:
-			deb_setf("hierarchy: alpha=4\n");
+			dbg_setf("hierarchy: alpha=4\n");
 			wr(DIB3000MB_REG_VIT_ALPHA, DIB3000_ALPHA_4);
 			break;
 		case HIERARCHY_AUTO:
-			deb_setf("hierarchy: alpha=auto\n");
+			dbg_setf("hierarchy: alpha=auto\n");
 			break;
 		default:
 			return -EINVAL;
@@ -255,30 +255,30 @@ static int dib3000mb_set_frontend(struct dvb_frontend *fe, int tuner)
 	}
 	switch (fe_cr) {
 		case FEC_1_2:
-			deb_setf("fec: 1_2\n");
+			dbg_setf("fec: 1_2\n");
 			wr(DIB3000MB_REG_VIT_CODE_RATE, DIB3000_FEC_1_2);
 			break;
 		case FEC_2_3:
-			deb_setf("fec: 2_3\n");
+			dbg_setf("fec: 2_3\n");
 			wr(DIB3000MB_REG_VIT_CODE_RATE, DIB3000_FEC_2_3);
 			break;
 		case FEC_3_4:
-			deb_setf("fec: 3_4\n");
+			dbg_setf("fec: 3_4\n");
 			wr(DIB3000MB_REG_VIT_CODE_RATE, DIB3000_FEC_3_4);
 			break;
 		case FEC_5_6:
-			deb_setf("fec: 5_6\n");
+			dbg_setf("fec: 5_6\n");
 			wr(DIB3000MB_REG_VIT_CODE_RATE, DIB3000_FEC_5_6);
 			break;
 		case FEC_7_8:
-			deb_setf("fec: 7_8\n");
+			dbg_setf("fec: 7_8\n");
 			wr(DIB3000MB_REG_VIT_CODE_RATE, DIB3000_FEC_7_8);
 			break;
 		case FEC_NONE:
-			deb_setf("fec: none\n");
+			dbg_setf("fec: none\n");
 			break;
 		case FEC_AUTO:
-			deb_setf("fec: auto\n");
+			dbg_setf("fec: auto\n");
 			break;
 		default:
 			return -EINVAL;
@@ -289,7 +289,7 @@ static int dib3000mb_set_frontend(struct dvb_frontend *fe, int tuner)
 		[c->guard_interval == GUARD_INTERVAL_AUTO]
 		[c->inversion == INVERSION_AUTO];
 
-	deb_setf("seq? %d\n", seq);
+	dbg_setf("seq? %d\n", seq);
 
 	wr(DIB3000MB_REG_SEQ, seq);
 
@@ -330,7 +330,7 @@ static int dib3000mb_set_frontend(struct dvb_frontend *fe, int tuner)
 		c->inversion == INVERSION_AUTO) {
 		int as_count=0;
 
-		deb_setf("autosearch enabled.\n");
+		dbg_setf("autosearch enabled\n");
 
 		wr(DIB3000MB_REG_ISI, DIB3000MB_ISI_INHIBIT);
 
@@ -343,12 +343,12 @@ static int dib3000mb_set_frontend(struct dvb_frontend *fe, int tuner)
 					rd(DIB3000MB_REG_LOCK2_VALUE))) < 0 && as_count++ < 100)
 			msleep(1);
 
-		deb_setf("search_state after autosearch %d after %d checks\n",
+		dbg_setf("search_state after autosearch %d after %d checks\n",
 			 search_state, as_count);
 
 		if (search_state == 1) {
 			if (dib3000mb_get_frontend(fe, c) == 0) {
-				deb_setf("reading tuning data from frontend succeeded.\n");
+				dbg_setf("reading tuning data from frontend succeeded\n");
 				return dib3000mb_set_frontend(fe, 0);
 			}
 		}
@@ -365,7 +365,7 @@ static int dib3000mb_fe_init(struct dvb_frontend* fe, int mobile_mode)
 {
 	struct dib3000_state* state = fe->demodulator_priv;
 
-	deb_info("dib3000mb is getting up.\n");
+	dbg_info("dib3000mb is getting up\n");
 	wr(DIB3000MB_REG_POWER_CONTROL, DIB3000MB_POWER_UP);
 
 	wr(DIB3000MB_REG_RESTART, DIB3000MB_RESTART_AGC);
@@ -451,7 +451,10 @@ static int dib3000mb_get_frontend(struct dvb_frontend* fe,
 		return 0;
 
 	dds_val = ((rd(DIB3000MB_REG_DDS_VALUE_MSB) & 0xff) << 16) + rd(DIB3000MB_REG_DDS_VALUE_LSB);
-	deb_getf("DDS_VAL: %x %x %x\n", dds_val, rd(DIB3000MB_REG_DDS_VALUE_MSB), rd(DIB3000MB_REG_DDS_VALUE_LSB));
+	dbg_getf("DDS_VAL: %x %x %x\n",
+		 dds_val,
+		 rd(DIB3000MB_REG_DDS_VALUE_MSB),
+		 rd(DIB3000MB_REG_DDS_VALUE_LSB));
 	if (dds_val < threshold)
 		inv_test1 = 0;
 	else if (dds_val == threshold)
@@ -460,7 +463,10 @@ static int dib3000mb_get_frontend(struct dvb_frontend* fe,
 		inv_test1 = 2;
 
 	dds_val = ((rd(DIB3000MB_REG_DDS_FREQ_MSB) & 0xff) << 16) + rd(DIB3000MB_REG_DDS_FREQ_LSB);
-	deb_getf("DDS_FREQ: %x %x %x\n", dds_val, rd(DIB3000MB_REG_DDS_FREQ_MSB), rd(DIB3000MB_REG_DDS_FREQ_LSB));
+	dbg_getf("DDS_FREQ: %x %x %x\n",
+		 dds_val,
+		 rd(DIB3000MB_REG_DDS_FREQ_MSB),
+		 rd(DIB3000MB_REG_DDS_FREQ_LSB));
 	if (dds_val < threshold)
 		inv_test2 = 0;
 	else if (dds_val == threshold)
@@ -473,57 +479,57 @@ static int dib3000mb_get_frontend(struct dvb_frontend* fe,
 		((inv_test2 == 0) && (inv_test1==1 || inv_test1==2)) ?
 		INVERSION_ON : INVERSION_OFF;
 
-	deb_getf("inversion %d %d, %d\n", inv_test2, inv_test1, c->inversion);
+	dbg_getf("inversion %d %d, %d\n", inv_test2, inv_test1, c->inversion);
 
 	switch ((tps_val = rd(DIB3000MB_REG_TPS_QAM))) {
 		case DIB3000_CONSTELLATION_QPSK:
-			deb_getf("QPSK\n");
+			dbg_getf("QPSK\n");
 			c->modulation = QPSK;
 			break;
 		case DIB3000_CONSTELLATION_16QAM:
-			deb_getf("QAM16\n");
+			dbg_getf("QAM16\n");
 			c->modulation = QAM_16;
 			break;
 		case DIB3000_CONSTELLATION_64QAM:
-			deb_getf("QAM64\n");
+			dbg_getf("QAM64\n");
 			c->modulation = QAM_64;
 			break;
 		default:
 			pr_err("Unexpected constellation returned by TPS (%d)\n", tps_val);
 			break;
 	}
-	deb_getf("TPS: %d\n", tps_val);
+	dbg_getf("TPS: %d\n", tps_val);
 
 	if (rd(DIB3000MB_REG_TPS_HRCH)) {
-		deb_getf("HRCH ON\n");
+		dbg_getf("HRCH ON\n");
 		cr = &c->code_rate_LP;
 		c->code_rate_HP = FEC_NONE;
 		switch ((tps_val = rd(DIB3000MB_REG_TPS_VIT_ALPHA))) {
 			case DIB3000_ALPHA_0:
-				deb_getf("HIERARCHY_NONE\n");
+				dbg_getf("HIERARCHY_NONE\n");
 				c->hierarchy = HIERARCHY_NONE;
 				break;
 			case DIB3000_ALPHA_1:
-				deb_getf("HIERARCHY_1\n");
+				dbg_getf("HIERARCHY_1\n");
 				c->hierarchy = HIERARCHY_1;
 				break;
 			case DIB3000_ALPHA_2:
-				deb_getf("HIERARCHY_2\n");
+				dbg_getf("HIERARCHY_2\n");
 				c->hierarchy = HIERARCHY_2;
 				break;
 			case DIB3000_ALPHA_4:
-				deb_getf("HIERARCHY_4\n");
+				dbg_getf("HIERARCHY_4\n");
 				c->hierarchy = HIERARCHY_4;
 				break;
 			default:
 				pr_err("Unexpected ALPHA value returned by TPS (%d)\n", tps_val);
 				break;
 		}
-		deb_getf("TPS: %d\n", tps_val);
+		dbg_getf("TPS: %d\n", tps_val);
 
 		tps_val = rd(DIB3000MB_REG_TPS_CODE_RATE_LP);
 	} else {
-		deb_getf("HRCH OFF\n");
+		dbg_getf("HRCH OFF\n");
 		cr = &c->code_rate_HP;
 		c->code_rate_LP = FEC_NONE;
 		c->hierarchy = HIERARCHY_NONE;
@@ -533,68 +539,68 @@ static int dib3000mb_get_frontend(struct dvb_frontend* fe,
 
 	switch (tps_val) {
 		case DIB3000_FEC_1_2:
-			deb_getf("FEC_1_2\n");
+			dbg_getf("FEC_1_2\n");
 			*cr = FEC_1_2;
 			break;
 		case DIB3000_FEC_2_3:
-			deb_getf("FEC_2_3\n");
+			dbg_getf("FEC_2_3\n");
 			*cr = FEC_2_3;
 			break;
 		case DIB3000_FEC_3_4:
-			deb_getf("FEC_3_4\n");
+			dbg_getf("FEC_3_4\n");
 			*cr = FEC_3_4;
 			break;
 		case DIB3000_FEC_5_6:
-			deb_getf("FEC_5_6\n");
+			dbg_getf("FEC_5_6\n");
 			*cr = FEC_4_5;
 			break;
 		case DIB3000_FEC_7_8:
-			deb_getf("FEC_7_8\n");
+			dbg_getf("FEC_7_8\n");
 			*cr = FEC_7_8;
 			break;
 		default:
 			pr_err("Unexpected FEC returned by TPS (%d)\n", tps_val);
 			break;
 	}
-	deb_getf("TPS: %d\n",tps_val);
+	dbg_getf("TPS: %d\n", tps_val);
 
 	switch ((tps_val = rd(DIB3000MB_REG_TPS_GUARD_TIME))) {
 		case DIB3000_GUARD_TIME_1_32:
-			deb_getf("GUARD_INTERVAL_1_32\n");
+			dbg_getf("GUARD_INTERVAL_1_32\n");
 			c->guard_interval = GUARD_INTERVAL_1_32;
 			break;
 		case DIB3000_GUARD_TIME_1_16:
-			deb_getf("GUARD_INTERVAL_1_16\n");
+			dbg_getf("GUARD_INTERVAL_1_16\n");
 			c->guard_interval = GUARD_INTERVAL_1_16;
 			break;
 		case DIB3000_GUARD_TIME_1_8:
-			deb_getf("GUARD_INTERVAL_1_8\n");
+			dbg_getf("GUARD_INTERVAL_1_8\n");
 			c->guard_interval = GUARD_INTERVAL_1_8;
 			break;
 		case DIB3000_GUARD_TIME_1_4:
-			deb_getf("GUARD_INTERVAL_1_4\n");
+			dbg_getf("GUARD_INTERVAL_1_4\n");
 			c->guard_interval = GUARD_INTERVAL_1_4;
 			break;
 		default:
 			pr_err("Unexpected Guard Time returned by TPS (%d)\n", tps_val);
 			break;
 	}
-	deb_getf("TPS: %d\n", tps_val);
+	dbg_getf("TPS: %d\n", tps_val);
 
 	switch ((tps_val = rd(DIB3000MB_REG_TPS_FFT))) {
 		case DIB3000_TRANSMISSION_MODE_2K:
-			deb_getf("TRANSMISSION_MODE_2K\n");
+			dbg_getf("TRANSMISSION_MODE_2K\n");
 			c->transmission_mode = TRANSMISSION_MODE_2K;
 			break;
 		case DIB3000_TRANSMISSION_MODE_8K:
-			deb_getf("TRANSMISSION_MODE_8K\n");
+			dbg_getf("TRANSMISSION_MODE_8K\n");
 			c->transmission_mode = TRANSMISSION_MODE_8K;
 			break;
 		default:
 			pr_err("unexpected transmission mode return by TPS (%d)\n", tps_val);
 			break;
 	}
-	deb_getf("TPS: %d\n", tps_val);
+	dbg_getf("TPS: %d\n", tps_val);
 
 	return 0;
 }
@@ -615,18 +621,18 @@ static int dib3000mb_read_status(struct dvb_frontend *fe,
 	if (rd(DIB3000MB_REG_TS_SYNC_LOCK))
 		*stat |= (FE_HAS_SYNC | FE_HAS_LOCK);
 
-	deb_getf("actual status is %2x\n",*stat);
+	dbg_getf("actual status is %2x\n", *stat);
 
-	deb_getf("autoval: tps: %d, qam: %d, hrch: %d, alpha: %d, hp: %d, lp: %d, guard: %d, fft: %d cell: %d\n",
-			rd(DIB3000MB_REG_TPS_LOCK),
-			rd(DIB3000MB_REG_TPS_QAM),
-			rd(DIB3000MB_REG_TPS_HRCH),
-			rd(DIB3000MB_REG_TPS_VIT_ALPHA),
-			rd(DIB3000MB_REG_TPS_CODE_RATE_HP),
-			rd(DIB3000MB_REG_TPS_CODE_RATE_LP),
-			rd(DIB3000MB_REG_TPS_GUARD_TIME),
-			rd(DIB3000MB_REG_TPS_FFT),
-			rd(DIB3000MB_REG_TPS_CELL_ID));
+	dbg_getf("autoval: tps: %d, qam: %d, hrch: %d, alpha: %d, hp: %d, lp: %d, guard: %d, fft: %d cell: %d\n",
+		 rd(DIB3000MB_REG_TPS_LOCK),
+		 rd(DIB3000MB_REG_TPS_QAM),
+		 rd(DIB3000MB_REG_TPS_HRCH),
+		 rd(DIB3000MB_REG_TPS_VIT_ALPHA),
+		 rd(DIB3000MB_REG_TPS_CODE_RATE_HP),
+		 rd(DIB3000MB_REG_TPS_CODE_RATE_LP),
+		 rd(DIB3000MB_REG_TPS_GUARD_TIME),
+		 rd(DIB3000MB_REG_TPS_FFT),
+		 rd(DIB3000MB_REG_TPS_CELL_ID));
 
 	//*stat = FE_HAS_SIGNAL | FE_HAS_CARRIER | FE_HAS_VITERBI | FE_HAS_SYNC | FE_HAS_LOCK;
 	return 0;
@@ -670,7 +676,7 @@ static int dib3000mb_read_unc_blocks(struct dvb_frontend* fe, u32 *unc)
 static int dib3000mb_sleep(struct dvb_frontend* fe)
 {
 	struct dib3000_state* state = fe->demodulator_priv;
-	deb_info("dib3000mb is going to bed.\n");
+	dbg_info("dib3000mb is going to bed\n");
 	wr(DIB3000MB_REG_POWER_CONTROL, DIB3000MB_POWER_DOWN);
 	return 0;
 }
@@ -710,7 +716,7 @@ static int dib3000mb_fifo_control(struct dvb_frontend *fe, int onoff)
 {
 	struct dib3000_state *state = fe->demodulator_priv;
 
-	deb_xfer("%s fifo\n",onoff ? "enabling" : "disabling");
+	dbg_xfer("%s fifo\n", onoff ? "enabling" : "disabling");
 	if (onoff) {
 		wr(DIB3000MB_REG_FIFO, DIB3000MB_FIFO_ACTIVATE);
 	} else {
@@ -722,7 +728,7 @@ static int dib3000mb_fifo_control(struct dvb_frontend *fe, int onoff)
 static int dib3000mb_pid_parse(struct dvb_frontend *fe, int onoff)
 {
 	struct dib3000_state *state = fe->demodulator_priv;
-	deb_xfer("%s pid parsing\n",onoff ? "enabling" : "disabling");
+	dbg_xfer("%s pid parsing\n", onoff ? "enabling" : "disabling");
 	wr(DIB3000MB_REG_PID_PARSE,onoff);
 	return 0;
 }
diff --git a/drivers/media/dvb-frontends/ix2505v.c b/drivers/media/dvb-frontends/ix2505v.c
index 73f27105c139..3e1b2b52a0d0 100644
--- a/drivers/media/dvb-frontends/ix2505v.c
+++ b/drivers/media/dvb-frontends/ix2505v.c
@@ -13,13 +13,14 @@
 #include "ix2505v.h"
 
 static int ix2505v_debug;
-#define dprintk(level, args...) do { \
-	if (ix2505v_debug & level) \
-		printk(KERN_DEBUG "ix2505v: " args); \
+#define dprintk(level, fmt, ...)					\
+do {									\
+	if (ix2505v_debug & (level))					\
+		printk(KERN_DEBUG "ix2505v: " fmt, ##__VA_ARGS__);	\
 } while (0)
 
-#define deb_info(args...)  dprintk(0x01, args)
-#define deb_i2c(args...)  dprintk(0x02, args)
+#define dbg_info(fmt, ...)	dprintk(0x01, fmt, ##__VA_ARGS__)
+#define dbg_i2c(fmt, ...)	dprintk(0x02, fmt, ##__VA_ARGS__)
 
 struct ix2505v_state {
 	struct i2c_adapter *i2c;
@@ -57,7 +58,7 @@ static int ix2505v_read_status_reg(struct ix2505v_state *state)
 	};
 
 	ret = i2c_transfer(state->i2c, msg, 1);
-	deb_i2c("Read %s ", __func__);
+	dbg_i2c("Read %s\n", __func__);
 
 	return (ret == 1) ? (int) b2[0] : -1;
 }
@@ -74,7 +75,7 @@ static int ix2505v_write(struct ix2505v_state *state, u8 buf[], u8 count)
 	ret = i2c_transfer(state->i2c, msg, 1);
 
 	if (ret != 1) {
-		deb_i2c("%s: i2c error, ret=%d\n", __func__, ret);
+		dbg_i2c("%s: i2c error, ret=%d\n", __func__, ret);
 		return -EIO;
 	}
 
@@ -153,7 +154,7 @@ static int ix2505v_set_params(struct dvb_frontend *fe)
 	data[1] = (N << 5) | (A & 0x1f);
 	data[2] = 0x81 | ((cc & 0x3) << 5) ; /*PD5,PD4 & TM = 0|C1,C0|REF=1*/
 
-	deb_info("Frq=%d x=%d N=%d A=%d\n", frequency, x, N, A);
+	dbg_info("Frq=%d x=%d N=%d A=%d\n", frequency, x, N, A);
 
 	if (frequency <= 1065000)
 		local_osc = (6 << 5) | 2;
@@ -197,8 +198,8 @@ static int ix2505v_set_params(struct dvb_frontend *fe)
 		else
 		lpf = 0xb;
 
-	deb_info("Osc=%x b_w=%x lpf=%x\n", local_osc, b_w, lpf);
-	deb_info("Data 0=[%4phN]\n", data);
+	dbg_info("Osc=%x b_w=%x lpf=%x\n", local_osc, b_w, lpf);
+	dbg_info("Data 0=[%4phN]\n", data);
 
 	if (fe->ops.i2c_gate_ctrl)
 		fe->ops.i2c_gate_ctrl(fe, 1);
@@ -219,7 +220,7 @@ static int ix2505v_set_params(struct dvb_frontend *fe)
 	data[2] |= ((lpf >> 2) & 0x3) << 3; /* lpf */
 	data[3] |= (lpf & 0x3) << 2;
 
-	deb_info("Data 2=[%x%x]\n", data[2], data[3]);
+	dbg_info("Data 2=[%x%x]\n", data[2], data[3]);
 
 	if (fe->ops.i2c_gate_ctrl)
 		fe->ops.i2c_gate_ctrl(fe, 1);
@@ -263,7 +264,7 @@ struct dvb_frontend *ix2505v_attach(struct dvb_frontend *fe,
 	int ret;
 
 	if (NULL == config) {
-		deb_i2c("%s: no config ", __func__);
+		dbg_i2c("%s: no config\n", __func__);
 		goto error;
 	}
 
@@ -281,7 +282,7 @@ struct dvb_frontend *ix2505v_attach(struct dvb_frontend *fe,
 		ret = ix2505v_read_status_reg(state);
 
 		if (ret & 0x80) {
-			deb_i2c("%s: No IX2505V found\n", __func__);
+			dbg_i2c("%s: No IX2505V found\n", __func__);
 			goto error;
 		}
 
@@ -293,7 +294,7 @@ struct dvb_frontend *ix2505v_attach(struct dvb_frontend *fe,
 
 	memcpy(&fe->ops.tuner_ops, &ix2505v_tuner_ops,
 		sizeof(struct dvb_tuner_ops));
-	deb_i2c("%s: initialization (%s addr=0x%02x) ok\n",
+	dbg_i2c("%s: initialization (%s addr=0x%02x) ok\n",
 		__func__, fe->ops.tuner_ops.info.name, config->tuner_address);
 
 	return fe;
diff --git a/drivers/media/dvb-frontends/m88rs2000.c b/drivers/media/dvb-frontends/m88rs2000.c
index 39cbb3ea1c9d..4450bb1940ab 100644
--- a/drivers/media/dvb-frontends/m88rs2000.c
+++ b/drivers/media/dvb-frontends/m88rs2000.c
@@ -39,13 +39,15 @@ static int m88rs2000_debug;
 module_param_named(debug, m88rs2000_debug, int, 0644);
 MODULE_PARM_DESC(debug, "set debugging level (1=info (or-able)).");
 
-#define dprintk(level, args...) do { \
-	if (level & m88rs2000_debug) \
-		printk(KERN_DEBUG "m88rs2000-fe: " args); \
+#define dprintk(level, fmt, ...)					\
+do {									\
+	if (m88rs2000_debug & (level))					\
+		printk(KERN_DEBUG "m88rs2000-fe: " fmt, ##__VA_ARGS__);	\
 } while (0)
 
-#define deb_info(args...)  dprintk(0x01, args)
-#define info(format, arg...) \
+#define dbg_info(fmt, ...)	dprintk(0x01, fmt, ##__VA_ARGS__)
+
+#define info(format, arg...)					\
 	printk(KERN_INFO "m88rs2000-fe: " format "\n" , ## arg)
 
 static int m88rs2000_writereg(struct m88rs2000_state *state,
@@ -63,7 +65,7 @@ static int m88rs2000_writereg(struct m88rs2000_state *state,
 	ret = i2c_transfer(state->i2c, &msg, 1);
 
 	if (ret != 1)
-		deb_info("%s: writereg error (reg == 0x%02x, val == 0x%02x, ret == %i)\n",
+		dbg_info("%s: writereg error (reg == 0x%02x, val == 0x%02x, ret == %i)\n",
 			 __func__, reg, data, ret);
 
 	return (ret != 1) ? -EREMOTEIO : 0;
@@ -92,8 +94,8 @@ static u8 m88rs2000_readreg(struct m88rs2000_state *state, u8 reg)
 	ret = i2c_transfer(state->i2c, msg, 2);
 
 	if (ret != 2)
-		deb_info("%s: readreg error (reg == 0x%02x, ret == %i)\n",
-				__func__, reg, ret);
+		dbg_info("%s: readreg error (reg == 0x%02x, ret == %i)\n",
+			 __func__, reg, ret);
 
 	return b1[0];
 }
@@ -186,7 +188,7 @@ static int m88rs2000_set_symbolrate(struct dvb_frontend *fe, u32 srate)
 	else
 		ret |= m88rs2000_writereg(state, 0xa3, 0x90);
 
-	deb_info("m88rs2000: m88rs2000_set_symbolrate\n");
+	dbg_info("%s\n", __func__);
 	return ret;
 }
 
@@ -197,7 +199,7 @@ static int m88rs2000_send_diseqc_msg(struct dvb_frontend *fe,
 
 	int i;
 	u8 reg;
-	deb_info("%s\n", __func__);
+	dbg_info("%s\n", __func__);
 	m88rs2000_writereg(state, 0x9a, 0x30);
 	reg = m88rs2000_readreg(state, 0xb2);
 	reg &= 0x3f;
@@ -239,7 +241,7 @@ static int m88rs2000_send_diseqc_burst(struct dvb_frontend *fe,
 {
 	struct m88rs2000_state *state = fe->demodulator_priv;
 	u8 reg0, reg1;
-	deb_info("%s\n", __func__);
+	dbg_info("%s\n", __func__);
 	m88rs2000_writereg(state, 0x9a, 0x30);
 	msleep(50);
 	reg0 = m88rs2000_readreg(state, 0xb1);
@@ -432,7 +434,7 @@ static int m88rs2000_init(struct dvb_frontend *fe)
 	struct m88rs2000_state *state = fe->demodulator_priv;
 	int ret;
 
-	deb_info("m88rs2000: init chip\n");
+	dbg_info("init chip\n");
 	/* Setup frontend from shutdown/cold */
 	if (state->config->inittab)
 		ret = m88rs2000_tab_set(state,
@@ -606,7 +608,7 @@ static int m88rs2000_set_frontend(struct dvb_frontend *fe)
 	state->no_lock_count = 0;
 
 	if (c->delivery_system != SYS_DVBS) {
-		deb_info("%s: unsupported delivery system selected (%d)\n",
+		dbg_info("%s: unsupported delivery system selected (%d)\n",
 			 __func__, c->delivery_system);
 		return -EOPNOTSUPP;
 	}
diff --git a/drivers/media/dvb-frontends/zl10036.c b/drivers/media/dvb-frontends/zl10036.c
index d392c7cce2ce..a69ff7ce0051 100644
--- a/drivers/media/dvb-frontends/zl10036.c
+++ b/drivers/media/dvb-frontends/zl10036.c
@@ -23,12 +23,14 @@
 #include "zl10036.h"
 
 static int zl10036_debug;
-#define dprintk(level, args...) \
-	do { if (zl10036_debug & level) printk(KERN_DEBUG "zl10036: " args); \
-	} while (0)
+#define dprintk(level, fmt, ...)					\
+do {									\
+	if (zl10036_debug & (level))					\
+		printk(KERN_DEBUG "zl10036: " fmt, ##__VA_ARGS__);	\
+} while (0)
 
-#define deb_info(args...)  dprintk(0x01, args)
-#define deb_i2c(args...)  dprintk(0x02, args)
+#define dbg_info(fmt, ...)	dprintk(0x01, fmt, ##__VA_ARGS__)
+#define dbg_i2c(fmt, ...)	dprintk(0x02, fmt, ##__VA_ARGS__)
 
 struct zl10036_state {
 	struct i2c_adapter *i2c;
@@ -70,10 +72,10 @@ static int zl10036_read_status_reg(struct zl10036_state *state)
 		return -EIO;
 	}
 
-	deb_i2c("R(status): %02x  [FL=%d]\n", status,
-		(status & STATUS_FL) ? 1 : 0);
+	dbg_i2c("R(status): %02x  [FL=%d]\n",
+		status, (status & STATUS_FL) ? 1 : 0);
 	if (status & STATUS_POR)
-		deb_info("%s: Power-On-Reset bit enabled - need to initialize the tuner\n",
+		dbg_info("%s: Power-On-Reset bit enabled - need to initialize the tuner\n",
 			 __func__);
 
 	return status;
@@ -104,13 +106,7 @@ static int zl10036_write(struct zl10036_state *state, u8 buf[], u8 count)
 		else if ((buf[0] & 0xf0) == 0xf0)
 			reg = 12;
 
-		deb_i2c("W(%d):", reg);
-		{
-			int i;
-			for (i = 0; i < count; i++)
-				printk(KERN_CONT " %02x", buf[i]);
-			printk(KERN_CONT "\n");
-		}
+		dbg_i2c("W(%d): %*ph\n", reg, (int)count, buf);
 	}
 
 	ret = i2c_transfer(state->i2c, msg, 1);
@@ -136,7 +132,7 @@ static int zl10036_sleep(struct dvb_frontend *fe)
 	u8 buf[] = { 0xf0, 0x80 }; /* regs 12/13 */
 	int ret;
 
-	deb_info("%s\n", __func__);
+	dbg_info("%s\n", __func__);
 
 	if (fe->ops.i2c_gate_ctrl)
 		fe->ops.i2c_gate_ctrl(fe, 1); /* open i2c_gate */
@@ -180,8 +176,8 @@ static int zl10036_set_frequency(struct zl10036_state *state, u32 frequency)
 	buf[0] = (div >> 8) & 0x7f;
 	buf[1] = (div >> 0) & 0xff;
 
-	deb_info("%s: ftodo=%u fpriv=%u ferr=%d div=%u\n", __func__,
-		frequency, state->frequency, foffset, div);
+	dbg_info("%s: ftodo=%u fpriv=%u ferr=%d div=%u\n",
+		 __func__, frequency, state->frequency, foffset, div);
 
 	return zl10036_write(state, buf, sizeof(buf));
 }
@@ -236,7 +232,7 @@ static int zl10036_set_bandwidth(struct zl10036_state *state, u32 fbw)
 
 	buf_bf[1] = (bf << 1) & 0x7e;
 	buf_br[1] = (br << 2) & 0x7c;
-	deb_info("%s: BW=%d br=%u bf=%u\n", __func__, fbw, br, bf);
+	dbg_info("%s: BW=%d br=%u bf=%u\n", __func__, fbw, br, bf);
 
 	if (br != state->br) {
 		ret = zl10036_write(state, buf_br, sizeof(buf_br));
@@ -287,7 +283,7 @@ static int zl10036_set_gain_params(struct zl10036_state *state,
 	/* P0=0 */
 	buf[1] = _RDIV_REG | ((c << 5) & 0x60);
 
-	deb_info("%s: c=%u rfg=%u ba=%u bg=%u\n", __func__, c, rfg, ba, bg);
+	dbg_info("%s: c=%u rfg=%u ba=%u bg=%u\n", __func__, c, rfg, ba, bg);
 	return zl10036_write(state, buf, sizeof(buf));
 }
 
@@ -400,7 +396,7 @@ static int zl10036_init_regs(struct zl10036_state *state)
 	if (!state->config->rf_loop_enable)
 		zl10036_init_tab[1][0] |= 0x01;
 
-	deb_info("%s\n", __func__);
+	dbg_info("%s\n", __func__);
 
 	for (i = 0; i < ARRAY_SIZE(zl10036_init_tab); i++) {
 		ret = zl10036_write(state, zl10036_init_tab[i], 2);
diff --git a/drivers/media/pci/b2c2/flexcop-dma.c b/drivers/media/pci/b2c2/flexcop-dma.c
index ba45b378d739..96a954f67af3 100644
--- a/drivers/media/pci/b2c2/flexcop-dma.c
+++ b/drivers/media/pci/b2c2/flexcop-dma.c
@@ -92,8 +92,8 @@ int flexcop_dma_xfer_control(struct flexcop_device *fc,
 	v0x0 = fc->read_ibi_reg(fc, r0x0);
 	v0xc = fc->read_ibi_reg(fc, r0xc);
 
-	deb_rdump("reg: %03x: %x\n", r0x0, v0x0.raw);
-	deb_rdump("reg: %03x: %x\n", r0xc, v0xc.raw);
+	dbg_rdump("reg: %03x: %x\n", r0x0, v0x0.raw);
+	dbg_rdump("reg: %03x: %x\n", r0xc, v0xc.raw);
 
 	if (index & FC_DMA_SUBADDR_0)
 		v0x0.dma_0x0.dma_0start = onoff;
@@ -104,8 +104,8 @@ int flexcop_dma_xfer_control(struct flexcop_device *fc,
 	fc->write_ibi_reg(fc, r0x0, v0x0);
 	fc->write_ibi_reg(fc, r0xc, v0xc);
 
-	deb_rdump("reg: %03x: %x\n", r0x0, v0x0.raw);
-	deb_rdump("reg: %03x: %x\n", r0xc, v0xc.raw);
+	dbg_rdump("reg: %03x: %x\n", r0x0, v0x0.raw);
+	dbg_rdump("reg: %03x: %x\n", r0xc, v0xc.raw);
 	return 0;
 }
 EXPORT_SYMBOL(flexcop_dma_xfer_control);
@@ -117,7 +117,7 @@ static int flexcop_dma_remap(struct flexcop_device *fc,
 	flexcop_ibi_register r = (dma_idx & FC_DMA_1) ? dma1_00c : dma2_01c;
 	flexcop_ibi_value v = fc->read_ibi_reg(fc, r);
 
-	deb_info("%s\n", __func__);
+	dbg_info("%s\n", __func__);
 	v.dma_0xc.remap_enable = onoff;
 	fc->write_ibi_reg(fc, r, v);
 	return 0;
@@ -166,7 +166,7 @@ int flexcop_dma_config_timer(struct flexcop_device *fc,
 
 	flexcop_dma_remap(fc, dma_idx, 0);
 
-	deb_info("%s\n", __func__);
+	dbg_info("%s\n", __func__);
 	v.dma_0x4_write.dmatimer = cycles;
 	fc->write_ibi_reg(fc, r, v);
 	return 0;
diff --git a/drivers/media/pci/b2c2/flexcop-pci.c b/drivers/media/pci/b2c2/flexcop-pci.c
index a9d9520a94c6..0d90bd56a2c9 100644
--- a/drivers/media/pci/b2c2/flexcop-pci.c
+++ b/drivers/media/pci/b2c2/flexcop-pci.c
@@ -18,19 +18,23 @@ module_param(irq_chk_intv, int, 0644);
 MODULE_PARM_DESC(irq_chk_intv, "set the interval for IRQ streaming watchdog.");
 
 #ifdef CONFIG_DVB_B2C2_FLEXCOP_DEBUG
-#define dprintk(level,args...) \
-	do { if ((debug & level)) printk(args); } while (0)
+#define dprintk(level, fmt, ...)					\
+do {									\
+	if (debug & (level))						\
+		printk(KERN_DEBUG fmt, ##__VA_ARGS__);			\
+} while (0)
 #define DEBSTATUS ""
 #else
-#define dprintk(level,args...)
+#define dprintk(level, fmt, ...)					\
+	no_printk(KERN_DEBUG fmt, ##__VA_ARGS__)
 #define DEBSTATUS " (debugging is not enabled)"
 #endif
 
-#define deb_info(args...) dprintk(0x01, args)
-#define deb_reg(args...) dprintk(0x02, args)
-#define deb_ts(args...) dprintk(0x04, args)
-#define deb_irq(args...) dprintk(0x08, args)
-#define deb_chk(args...) dprintk(0x10, args)
+#define dbg_info(fmt, ...)	dprintk(0x01, fmt, ##__VA_ARGS__)
+#define dbg_reg(fmt, ...)	dprintk(0x02, fmt, ##__VA_ARGS__)
+#define dbg_ts(fmt, ...)	dprintk(0x04, fmt, ##__VA_ARGS__)
+#define dbg_irq(fmt, ...)	dprintk(0x08, fmt, ##__VA_ARGS__)
+#define dbg_chk(fmt, ...)	dprintk(0x10, fmt, ##__VA_ARGS__)
 
 static int debug;
 module_param(debug, int, 0644);
@@ -82,7 +86,7 @@ static flexcop_ibi_value flexcop_pci_read_ibi_reg(struct flexcop_device *fc,
 
 	if (lastrreg != r || lastrval != v.raw) {
 		lastrreg = r; lastrval = v.raw;
-		deb_reg("new rd: %3x: %08x\n", r, v.raw);
+		dbg_reg("new rd: %3x: %08x\n", r, v.raw);
 	}
 
 	return v;
@@ -95,7 +99,7 @@ static int flexcop_pci_write_ibi_reg(struct flexcop_device *fc,
 
 	if (lastwreg != r || lastwval != v.raw) {
 		lastwreg = r; lastwval = v.raw;
-		deb_reg("new wr: %3x: %08x\n", r, v.raw);
+		dbg_reg("new wr: %3x: %08x\n", r, v.raw);
 	}
 
 	writel(v.raw, fc_pci->io_mem + r);
@@ -111,10 +115,10 @@ static void flexcop_pci_irq_check_work(struct work_struct *work)
 	if (fc->feedcount) {
 
 		if (fc_pci->count == fc_pci->count_prev) {
-			deb_chk("no IRQ since the last check\n");
+			dbg_chk("no IRQ since the last check\n");
 			if (fc_pci->stream_problem++ == 3) {
 				struct dvb_demux_feed *feed;
-				deb_info("flexcop-pci: stream problem, resetting pid filter\n");
+				dbg_info("flexcop-pci: stream problem, resetting pid filter\n");
 
 				spin_lock_irq(&fc->demux.lock);
 				list_for_each_entry(feed, &fc->demux.feed_list,
@@ -156,16 +160,16 @@ static irqreturn_t flexcop_pci_isr(int irq, void *dev_id)
 
 	/* errors */
 	if (v.irq_20c.Data_receiver_error)
-		deb_chk("data receiver error\n");
+		dbg_chk("data receiver error\n");
 	if (v.irq_20c.Continuity_error_flag)
-		deb_chk("Continuity error flag is set\n");
+		dbg_chk("Continuity error flag is set\n");
 	if (v.irq_20c.LLC_SNAP_FLAG_set)
-		deb_chk("LLC_SNAP_FLAG_set is set\n");
+		dbg_chk("LLC_SNAP_FLAG_set is set\n");
 	if (v.irq_20c.Transport_Error)
-		deb_chk("Transport error\n");
+		dbg_chk("Transport error\n");
 
 	if ((fc_pci->count % 1000) == 0)
-		deb_chk("%d valid irq took place so far\n", fc_pci->count);
+		dbg_chk("%d valid irq took place so far\n", fc_pci->count);
 
 	if (v.irq_20c.DMA1_IRQ_Status == 1) {
 		if (fc_pci->active_dma1_addr == 0)
@@ -177,7 +181,7 @@ static irqreturn_t flexcop_pci_isr(int irq, void *dev_id)
 					fc_pci->dma[0].cpu_addr1,
 					fc_pci->dma[0].size / 188);
 
-		deb_irq("page change to page: %d\n",!fc_pci->active_dma1_addr);
+		dbg_irq("page change to page: %d\n", !fc_pci->active_dma1_addr);
 		fc_pci->active_dma1_addr = !fc_pci->active_dma1_addr;
 		/* for the timer IRQ we only can use buffer dmx feeding, because we don't have
 		 * complete TS packets when reading from the DMA memory */
@@ -186,17 +190,17 @@ static irqreturn_t flexcop_pci_isr(int irq, void *dev_id)
 			fc->read_ibi_reg(fc,dma1_008).dma_0x8.dma_cur_addr << 2;
 		u32 cur_pos = cur_addr - fc_pci->dma[0].dma_addr0;
 
-		deb_irq("%u irq: %08x cur_addr: %llx: cur_pos: %08x, last_cur_pos: %08x ",
-				jiffies_to_usecs(jiffies - fc_pci->last_irq),
-				v.raw, (unsigned long long)cur_addr, cur_pos,
-				fc_pci->last_dma1_cur_pos);
+		dbg_irq("%u irq: %08x cur_addr: %llx: cur_pos: %08x, last_cur_pos: %08x\n",
+			jiffies_to_usecs(jiffies - fc_pci->last_irq),
+			v.raw, (unsigned long long)cur_addr, cur_pos,
+			fc_pci->last_dma1_cur_pos);
 		fc_pci->last_irq = jiffies;
 
 		/* buffer end was reached, restarted from the beginning
 		 * pass the data from last_cur_pos to the buffer end to the demux
 		 */
 		if (cur_pos < fc_pci->last_dma1_cur_pos) {
-			deb_irq(" end was reached: passing %d bytes ",
+			dbg_irq("end was reached: passing %d bytes\n",
 				(fc_pci->dma[0].size*2 - 1) -
 				fc_pci->last_dma1_cur_pos);
 			flexcop_pass_dmx_data(fc_pci->fc_dev,
@@ -208,19 +212,18 @@ static irqreturn_t flexcop_pci_isr(int irq, void *dev_id)
 		}
 
 		if (cur_pos > fc_pci->last_dma1_cur_pos) {
-			deb_irq(" passing %d bytes ",
+			dbg_irq("passing %d bytes\n",
 				cur_pos - fc_pci->last_dma1_cur_pos);
 			flexcop_pass_dmx_data(fc_pci->fc_dev,
 				fc_pci->dma[0].cpu_addr0 +
 					fc_pci->last_dma1_cur_pos,
 				cur_pos - fc_pci->last_dma1_cur_pos);
 		}
-		deb_irq("\n");
 
 		fc_pci->last_dma1_cur_pos = cur_pos;
 		fc_pci->count++;
 	} else {
-		deb_irq("isr for flexcop called, apparently without reason (%08x)\n",
+		dbg_irq("isr for flexcop called, apparently without reason (%08x)\n",
 			v.raw);
 		ret = IRQ_NONE;
 	}
@@ -238,19 +241,19 @@ static int flexcop_pci_stream_control(struct flexcop_device *fc, int onoff)
 		flexcop_dma_config_timer(fc, FC_DMA_1, 0);
 		flexcop_dma_xfer_control(fc, FC_DMA_1,
 				FC_DMA_SUBADDR_0 | FC_DMA_SUBADDR_1, 1);
-		deb_irq("DMA xfer enabled\n");
+		dbg_irq("DMA xfer enabled\n");
 
 		fc_pci->last_dma1_cur_pos = 0;
 		flexcop_dma_control_timer_irq(fc, FC_DMA_1, 1);
-		deb_irq("IRQ enabled\n");
+		dbg_irq("IRQ enabled\n");
 		fc_pci->count_prev = fc_pci->count;
 	} else {
 		flexcop_dma_control_timer_irq(fc, FC_DMA_1, 0);
-		deb_irq("IRQ disabled\n");
+		dbg_irq("IRQ disabled\n");
 
 		flexcop_dma_xfer_control(fc, FC_DMA_1,
 			 FC_DMA_SUBADDR_0 | FC_DMA_SUBADDR_1, 0);
-		deb_irq("DMA xfer disabled\n");
+		dbg_irq("DMA xfer disabled\n");
 	}
 	return 0;
 }
diff --git a/drivers/media/usb/b2c2/flexcop-usb.c b/drivers/media/usb/b2c2/flexcop-usb.c
index 198ddfb8d2b1..e4a0d09e56cf 100644
--- a/drivers/media/usb/b2c2/flexcop-usb.c
+++ b/drivers/media/usb/b2c2/flexcop-usb.c
@@ -15,20 +15,16 @@
 
 /* debug */
 #ifdef CONFIG_DVB_B2C2_FLEXCOP_DEBUG
-#define dprintk(level,args...) \
-	do { if ((debug & level)) printk(args); } while (0)
-
-#define debug_dump(b, l, method) do {\
-	int i; \
-	for (i = 0; i < l; i++) \
-		method("%02x ", b[i]); \
-	method("\n"); \
+#define dprintk(level, fmt, ...)					\
+do {									\
+	if (debug & (level))						\
+		printk(KERN_DEBUG fmt, ##__VA_ARGS__);			\
 } while (0)
 
 #define DEBSTATUS ""
 #else
-#define dprintk(level, args...)
-#define debug_dump(b, l, method)
+#define dprintk(level, fmt, ...)					\
+	no_printk(KERN_DEBUG fmt, ##__VA_ARGS__)
 #define DEBSTATUS " (debugging is not enabled)"
 #endif
 
@@ -37,11 +33,11 @@ module_param(debug, int, 0644);
 MODULE_PARM_DESC(debug, "set debugging level (1=info,ts=2,ctrl=4,i2c=8,v8mem=16 (or-able))." DEBSTATUS);
 #undef DEBSTATUS
 
-#define deb_info(args...) dprintk(0x01, args)
-#define deb_ts(args...) dprintk(0x02, args)
-#define deb_ctrl(args...) dprintk(0x04, args)
-#define deb_i2c(args...) dprintk(0x08, args)
-#define deb_v8(args...) dprintk(0x10, args)
+#define dbg_info(args...) dprintk(0x01, args)
+#define dbg_ts(args...) dprintk(0x02, args)
+#define dbg_ctrl(args...) dprintk(0x04, args)
+#define dbg_i2c(args...) dprintk(0x08, args)
+#define dbg_v8(args...) dprintk(0x10, args)
 
 /* JLP 111700: we will include the 1 bit gap between the upper and lower 3 bits
  * in the IBI address, to make the V8 code simpler.
@@ -137,11 +133,11 @@ static int flexcop_usb_v8_memory_req(struct flexcop_usb *fc_usb,
 		pipe = B2C2_USB_CTRL_PIPE_OUT;
 		break;
 	default:
-		deb_info("unsupported request for v8_mem_req %x.\n", req);
+		dbg_info("unsupported request for v8_mem_req %x\n", req);
 		return -EINVAL;
 	}
-	deb_v8("v8mem: %02x %02x %04x %04x, len: %d\n", request_type, req,
-			wAddress, wIndex, buflen);
+	dbg_v8("v8mem: %02x %02x %04x %04x, len: %d\n",
+	       request_type, req, wAddress, wIndex, buflen);
 
 	mutex_lock(&fc_usb->data_mutex);
 
@@ -167,7 +163,7 @@ static int flexcop_usb_v8_memory_req(struct flexcop_usb *fc_usb,
 
 	mutex_unlock(&fc_usb->data_mutex);
 
-	debug_dump(pbBuffer, ret, deb_v8);
+	dbg_v8("v8mem buffer: %*ph\n", ret, pbBuffer);
 	return ret;
 }
 
@@ -202,9 +198,9 @@ static int flexcop_usb_memory_req(struct flexcop_usb *fc_usb,
 			wMax < bytes_left_to_read_on_page(addr, len) ?
 				wMax :
 				bytes_left_to_read_on_page(addr, len);
-		deb_info("%x\n",
-			(addr & V8_MEMORY_PAGE_MASK) |
-				(V8_MEMORY_EXTENDED*extended));
+		dbg_info("%x\n",
+			 (addr & V8_MEMORY_PAGE_MASK) |
+			 (V8_MEMORY_EXTENDED * extended));
 
 		ret = flexcop_usb_v8_memory_req(fc_usb, req,
 			page_start + (addr / V8_MEMORY_PAGE_SIZE),
@@ -259,16 +255,16 @@ static int flexcop_usb_i2c_req(struct flexcop_i2c_adapter *i2c,
 		request_type |= USB_DIR_IN;
 		break;
 	default:
-		deb_info("unsupported function for i2c_req %x\n", func);
+		dbg_info("unsupported function for i2c_req %x\n", func);
 		return -EINVAL;
 	}
 	wValue = (func << 8) | (i2c->port << 4);
 	wIndex = (chipaddr << 8 ) | addr;
 
-	deb_i2c("i2c %2d: %02x %02x %02x %02x %02x %02x\n",
-			func, request_type, req,
-			wValue & 0xff, wValue >> 8,
-			wIndex & 0xff, wIndex >> 8);
+	dbg_i2c("i2c %2d: %02x %02x %02x %02x %02x %02x\n",
+		func, request_type, req,
+		wValue & 0xff, wValue >> 8,
+		wIndex & 0xff, wIndex >> 8);
 
 	mutex_lock(&fc_usb->data_mutex);
 
@@ -332,8 +328,8 @@ static void flexcop_usb_process_frame(struct flexcop_usb *fc_usb,
 	u8 *b;
 	int l;
 
-	deb_ts("tmp_buffer_length=%d, buffer_length=%d\n",
-		fc_usb->tmp_buffer_length, buffer_length);
+	dbg_ts("tmp_buffer_length=%d, buffer_length=%d\n",
+	       fc_usb->tmp_buffer_length, buffer_length);
 
 	if (fc_usb->tmp_buffer_length > 0) {
 		memcpy(fc_usb->tmp_buffer+fc_usb->tmp_buffer_length, buffer,
@@ -354,17 +350,17 @@ static void flexcop_usb_process_frame(struct flexcop_usb *fc_usb,
 					flexcop_pass_dmx_packets(
 							fc_usb->fc_dev, b+2, 1);
 				else
-					deb_ts("not ts packet %*ph\n", 4, b+2);
+					dbg_ts("not ts packet %*ph\n", 4, b + 2);
 				b += 190;
 				l -= 190;
 				break;
 			default:
-				deb_ts("wrong packet type\n");
+				dbg_ts("wrong packet type\n");
 				l = 0;
 				break;
 			}
 		} else {
-			deb_ts("wrong header\n");
+			dbg_ts("wrong header\n");
 			l = 0;
 		}
 	}
@@ -380,8 +376,8 @@ static void flexcop_usb_urb_complete(struct urb *urb)
 	int i;
 
 	if (urb->actual_length > 0)
-		deb_ts("urb completed, bufsize: %d actlen; %d\n",
-			urb->transfer_buffer_length, urb->actual_length);
+		dbg_ts("urb completed, bufsize: %d actlen; %d\n",
+		       urb->transfer_buffer_length, urb->actual_length);
 
 	for (i = 0; i < urb->number_of_packets; i++) {
 		if (urb->iso_frame_desc[i].status < 0) {
@@ -389,8 +385,8 @@ static void flexcop_usb_urb_complete(struct urb *urb)
 				urb->iso_frame_desc[i].status);
 		} else
 			if (urb->iso_frame_desc[i].actual_length > 0) {
-				deb_ts("passed %d bytes to the demux\n",
-					urb->iso_frame_desc[i].actual_length);
+				dbg_ts("passed %d bytes to the demux\n",
+				       urb->iso_frame_desc[i].actual_length);
 
 				flexcop_usb_process_frame(fc_usb,
 					urb->transfer_buffer +
@@ -414,7 +410,7 @@ static void flexcop_usb_transfer_exit(struct flexcop_usb *fc_usb)
 	int i;
 	for (i = 0; i < B2C2_USB_NUM_ISO_URB; i++)
 		if (fc_usb->iso_urb[i] != NULL) {
-			deb_ts("unlinking/killing urb no. %d\n",i);
+			dbg_ts("unlinking/killing urb no. %d\n", i);
 			usb_kill_urb(fc_usb->iso_urb[i]);
 			usb_free_urb(fc_usb->iso_urb[i]);
 		}
@@ -433,9 +429,9 @@ static int flexcop_usb_transfer_init(struct flexcop_usb *fc_usb)
 		frame_size, i, j, ret;
 	int buffer_offset = 0;
 
-	deb_ts("creating %d iso-urbs with %d frames each of %d bytes size = %d.\n",
+	dbg_ts("creating %d iso-urbs with %d frames each of %d bytes size = %d\n",
 	       B2C2_USB_NUM_ISO_URB,
-			B2C2_USB_FRAMES_PER_ISO, frame_size, bufsize);
+	       B2C2_USB_FRAMES_PER_ISO, frame_size, bufsize);
 
 	fc_usb->iso_buffer = usb_alloc_coherent(fc_usb->udev,
 			bufsize, GFP_KERNEL, &fc_usb->dma_addr);
@@ -459,7 +455,7 @@ static int flexcop_usb_transfer_init(struct flexcop_usb *fc_usb)
 	for (i = 0; i < B2C2_USB_NUM_ISO_URB; i++) {
 		int frame_offset = 0;
 		struct urb *urb = fc_usb->iso_urb[i];
-		deb_ts("initializing and submitting urb no. %d (buf_offset: %d).\n",
+		dbg_ts("initializing and submitting urb no. %d (buf_offset: %d)\n",
 		       i, buffer_offset);
 
 		urb->dev = fc_usb->udev;
@@ -474,8 +470,8 @@ static int flexcop_usb_transfer_init(struct flexcop_usb *fc_usb)
 
 		buffer_offset += frame_size * B2C2_USB_FRAMES_PER_ISO;
 		for (j = 0; j < B2C2_USB_FRAMES_PER_ISO; j++) {
-			deb_ts("urb no: %d, frame: %d, frame_offset: %d\n",
-					i, j, frame_offset);
+			dbg_ts("urb no: %d, frame: %d, frame_offset: %d\n",
+			       i, j, frame_offset);
 			urb->iso_frame_desc[j].offset = frame_offset;
 			urb->iso_frame_desc[j].length = frame_size;
 			frame_offset += frame_size;
@@ -485,7 +481,7 @@ static int flexcop_usb_transfer_init(struct flexcop_usb *fc_usb)
 			err("submitting urb %d failed with %d.", i, ret);
 			goto urb_error;
 		}
-		deb_ts("submitted urb no. %d.\n",i);
+		dbg_ts("submitted urb no. %d\n", i);
 	}
 
 	/* SRAM */
diff --git a/drivers/media/usb/dvb-usb-v2/lmedm04.c b/drivers/media/usb/dvb-usb-v2/lmedm04.c
index 8a3c0eeed959..b7d4c62875a9 100644
--- a/drivers/media/usb/dvb-usb-v2/lmedm04.c
+++ b/drivers/media/usb/dvb-usb-v2/lmedm04.c
@@ -83,9 +83,9 @@ static int dvb_usb_lme2510_debug;
 	if ((var >= level)) \
 		pr_debug(DVB_USB_LOG_PREFIX": " args); \
 } while (0)
-#define deb_info(level, args...) lme_debug(dvb_usb_lme2510_debug, level, args)
+#define dbg_info(level, args...) lme_debug(dvb_usb_lme2510_debug, level, args)
 #define debug_data_snipet(level, name, p) \
-	 deb_info(level, name" (%8phN)", p);
+	 dbg_info(level, name " (%8phN)", p);
 #define info(args...) pr_info(DVB_USB_LOG_PREFIX": "args)
 
 module_param_named(debug, dvb_usb_lme2510_debug, int, 0644);
@@ -185,7 +185,7 @@ static int lme2510_enable_pid(struct dvb_usb_device *d, u8 index, u16 pid_out)
 	u8 pid_no = index * 2;
 	u8 pid_len = pid_no + 2;
 	int ret = 0;
-	deb_info(1, "PID Setting Pid %04x", pid_out);
+	dbg_info(1, "PID Setting Pid %04x", pid_out);
 
 	if (st->pid_size == 0)
 		ret |= lme2510_stream_restart(d);
@@ -293,8 +293,8 @@ static void lme2510_int_response(struct urb *lme_urb)
 
 	for (i = 0; i < offset; ++i) {
 		ibuf = (u8 *)&rbuf[i*8];
-		deb_info(5, "INT O/S C =%02x C/O=%02x Type =%02x%02x",
-		offset, i, ibuf[0], ibuf[1]);
+		dbg_info(5, "INT O/S C =%02x C/O=%02x Type =%02x%02x",
+			 offset, i, ibuf[0], ibuf[1]);
 
 		switch (ibuf[0]) {
 		case 0xaa:
@@ -307,7 +307,7 @@ static void lme2510_int_response(struct urb *lme_urb)
 						ibuf[4] << 8  |
 						ibuf[5]);
 
-			deb_info(1, "INT Key = 0x%08x", key);
+			dbg_info(1, "INT Key = 0x%08x", key);
 			rc_keydown(adap_to_d(adap)->rc_dev, RC_PROTO_NEC32, key,
 				   0);
 			break;
@@ -407,7 +407,7 @@ static int lme2510_pid_filter_ctrl(struct dvb_usb_adapter *adap, int onoff)
 	static u8 rbuf[1];
 	int ret = 0;
 
-	deb_info(1, "PID Clearing Filter");
+	dbg_info(1, "PID Clearing Filter");
 
 	mutex_lock(&d->i2c_mutex);
 
@@ -431,8 +431,8 @@ static int lme2510_pid_filter(struct dvb_usb_adapter *adap, int index, u16 pid,
 	struct dvb_usb_device *d = adap_to_d(adap);
 	int ret = 0;
 
-	deb_info(3, "%s PID=%04x Index=%04x onoff=%02x", __func__,
-		pid, index, onoff);
+	dbg_info(3, "%s PID=%04x Index=%04x onoff=%02x",
+		 __func__, pid, index, onoff);
 
 	if (onoff) {
 		mutex_lock(&d->i2c_mutex);
@@ -521,7 +521,7 @@ static int lme2510_i2c_xfer(struct i2c_adapter *adap, struct i2c_msg msg[],
 		}
 
 		if (lme2510_msg(d, obuf, len, ibuf, 64) < 0) {
-			deb_info(1, "i2c transfer failed.");
+			dbg_info(1, "i2c transfer failed.");
 			mutex_unlock(&d->i2c_mutex);
 			return -EAGAIN;
 		}
@@ -559,13 +559,13 @@ static int lme2510_streaming_ctrl(struct dvb_frontend *fe, int onoff)
 	static u8 rbuf[1];
 	int ret = 0, rlen = sizeof(rbuf);
 
-	deb_info(1, "STM  (%02x)", onoff);
+	dbg_info(1, "STM  (%02x)", onoff);
 
 	/* Streaming is started by FE_HAS_LOCK */
 	if (onoff == 1)
 		st->stream_on = 1;
 	else {
-		deb_info(1, "STM Steam Off");
+		dbg_info(1, "STM Steam Off");
 		/* mutex is here only to avoid collision with I2C */
 		mutex_lock(&d->i2c_mutex);
 
@@ -625,8 +625,8 @@ static int lme2510_download_firmware(struct dvb_usb_device *d,
 			memcpy(&data[2], fw_data, dlen+1);
 			wlen = (u8) dlen + 4;
 			data[wlen-1] = check_sum(fw_data, dlen+1);
-			deb_info(1, "Data S=%02x:E=%02x CS= %02x", data[3],
-				data[dlen+2], data[dlen+3]);
+			dbg_info(1, "Data S=%02x:E=%02x CS= %02x",
+				 data[3], data[dlen + 2], data[dlen + 3]);
 			lme2510_usb_talk(d, data, wlen, data, len_in);
 			ret |= (data[0] == 0x88) ? 0 : -1;
 		}
@@ -756,7 +756,7 @@ static int lme2510_kill_urb(struct usb_data_stream *stream)
 	int i;
 
 	for (i = 0; i < stream->urbs_submitted; i++) {
-		deb_info(3, "killing URB no. %d.", i);
+		dbg_info(3, "killing URB no. %d.", i);
 		/* stop the URB */
 		usb_kill_urb(stream->urb_list[i]);
 	}
diff --git a/drivers/media/usb/dvb-usb/a800.c b/drivers/media/usb/dvb-usb/a800.c
index 36b5b6227412..a8383a3c4fc8 100644
--- a/drivers/media/usb/dvb-usb/a800.c
+++ b/drivers/media/usb/dvb-usb/a800.c
@@ -18,7 +18,7 @@ MODULE_PARM_DESC(debug, "set debugging level (rc=1 (or-able))." DVB_USB_DEBUG_ST
 
 DVB_DEFINE_MOD_OPT_ADAPTER_NR(adapter_nr);
 
-#define deb_rc(args...)   dprintk(debug,0x01,args)
+#define dbg_rc(fmt, ...)   dprintk(debug, 0x01, fmt, ##__VA_ARGS__)
 
 static int a800_power_ctrl(struct dvb_usb_device *d, int onoff)
 {
diff --git a/drivers/media/usb/dvb-usb/af9005-fe.c b/drivers/media/usb/dvb-usb/af9005-fe.c
index 9d6fa0556d7b..e78615d4d5bf 100644
--- a/drivers/media/usb/dvb-usb/af9005-fe.c
+++ b/drivers/media/usb/dvb-usb/af9005-fe.c
@@ -139,7 +139,7 @@ static int af9005_get_post_vit_err_cw_count(struct dvb_frontend *fe,
 	if (ret)
 		return ret;
 	if (!temp) {
-		deb_info("rsd counter not ready\n");
+		dbg_info("rsd counter not ready\n");
 		return 100;
 	}
 	/* get abort count */
@@ -192,7 +192,7 @@ static int af9005_get_post_vit_err_cw_count(struct dvb_frontend *fe,
 		err("wrong RSD packet count");
 		return -EIO;
 	}
-	deb_info("POST abort count %d err count %d rsd packets %d\n",
+	dbg_info("POST abort count %d err count %d rsd packets %d\n",
 		 loc_abort_count, err_count, cw_count);
 	*post_cw_count = cw_count - (u32) loc_abort_count;
 	*abort_count = loc_abort_count;
@@ -236,7 +236,7 @@ static int af9005_get_pre_vit_err_bit_count(struct dvb_frontend *fe,
 	if (ret)
 		return ret;
 	if (!temp) {
-		deb_info("viterbi counter not ready\n");
+		dbg_info("viterbi counter not ready\n");
 		return 101;	/* ERR_APO_VTB_COUNTER_NOT_READY; */
 	}
 	ret =
@@ -268,7 +268,7 @@ static int af9005_get_pre_vit_err_bit_count(struct dvb_frontend *fe,
 		return ret;
 	super_frame_count = ((u32) temp1 << 8) + temp0;
 	if (super_frame_count == 0) {
-		deb_info("super frame count 0\n");
+		dbg_info("super frame count 0\n");
 		return 102;
 	}
 
@@ -312,7 +312,7 @@ static int af9005_get_pre_vit_err_bit_count(struct dvb_frontend *fe,
 		return -EINVAL;
 	}
 	*pre_bit_count = super_frame_count * 68 * 4 * x * bits;
-	deb_info("PRE err count %d frame count %d bit count %d\n",
+	dbg_info("PRE err count %d frame count %d bit count %d\n",
 		 *pre_err_count, super_frame_count, *pre_bit_count);
 	return 0;
 }
@@ -372,12 +372,12 @@ static int af9005_get_statistic(struct dvb_frontend *fe)
 	int ret, fecavailable;
 	u64 numerator, denominator;
 
-	deb_info("GET STATISTIC\n");
+	dbg_info("GET STATISTIC\n");
 	ret = af9005_is_fecmon_available(fe, &fecavailable);
 	if (ret)
 		return ret;
 	if (!fecavailable) {
-		deb_info("fecmon not available\n");
+		dbg_info("fecmon not available\n");
 		return 0;
 	}
 
@@ -414,7 +414,7 @@ static int af9005_fe_refresh_state(struct dvb_frontend *fe)
 {
 	struct af9005_fe_state *state = fe->demodulator_priv;
 	if (time_after(jiffies, state->next_status_check)) {
-		deb_info("REFRESH STATE\n");
+		dbg_info("REFRESH STATE\n");
 
 		/* statistics */
 		if (af9005_get_statistic(fe))
@@ -468,7 +468,7 @@ static int af9005_fe_read_status(struct dvb_frontend *fe,
 	if (ret)
 		return ret;
 	if (temp != state->strong) {
-		deb_info("adjust for strong signal %d\n", temp);
+		dbg_info("adjust for strong signal %d\n", temp);
 		state->strong = temp;
 	}
 	return 0;
@@ -787,7 +787,7 @@ static int af9005_fe_power(struct dvb_frontend *fe, int on)
 	struct af9005_fe_state *state = fe->demodulator_priv;
 	u8 temp = on;
 	int ret;
-	deb_info("power %s tuner\n", on ? "on" : "off");
+	dbg_info("power %s tuner\n", on ? "on" : "off");
 	ret = af9005_send_command(state->d, 0x03, &temp, 1, NULL, 0);
 	return ret;
 }
@@ -809,10 +809,10 @@ static int af9005_fe_init(struct dvb_frontend *fe)
 	u8 buf[2];
 	u16 if1;
 
-	deb_info("in af9005_fe_init\n");
+	dbg_info("in %s\n", __func__);
 
 	/* reset */
-	deb_info("reset\n");
+	dbg_info("reset\n");
 	if ((ret =
 	     af9005_write_register_bits(state->d, xd_I2C_reg_ofdm_rst_en,
 					4, 1, 0x01)))
@@ -820,7 +820,7 @@ static int af9005_fe_init(struct dvb_frontend *fe)
 	if ((ret = af9005_write_ofdm_register(state->d, APO_REG_RESET, 0)))
 		return ret;
 	/* clear ofdm reset */
-	deb_info("clear ofdm reset\n");
+	dbg_info("clear ofdm reset\n");
 	for (i = 0; i < 150; i++) {
 		if ((ret =
 		     af9005_read_ofdm_register(state->d,
@@ -876,7 +876,7 @@ static int af9005_fe_init(struct dvb_frontend *fe)
 		return ret;
 
 	/* set stand alone chip */
-	deb_info("set stand alone chip\n");
+	dbg_info("set stand alone chip\n");
 	if ((ret =
 	     af9005_write_register_bits(state->d, xd_p_reg_dca_stand_alone,
 					reg_dca_stand_alone_pos,
@@ -884,7 +884,7 @@ static int af9005_fe_init(struct dvb_frontend *fe)
 		return ret;
 
 	/* set dca upper & lower chip */
-	deb_info("set dca upper & lower chip\n");
+	dbg_info("set dca upper & lower chip\n");
 	if ((ret =
 	     af9005_write_register_bits(state->d, xd_p_reg_dca_upper_chip,
 					reg_dca_upper_chip_pos,
@@ -897,13 +897,13 @@ static int af9005_fe_init(struct dvb_frontend *fe)
 		return ret;
 
 	/* set 2wire master clock to 0x14 (for 60KHz) */
-	deb_info("set 2wire master clock to 0x14 (for 60KHz)\n");
+	dbg_info("set 2wire master clock to 0x14 (for 60KHz)\n");
 	if ((ret =
 	     af9005_write_ofdm_register(state->d, xd_I2C_i2c_m_period, 0x14)))
 		return ret;
 
 	/* clear dca enable chip */
-	deb_info("clear dca enable chip\n");
+	dbg_info("clear dca enable chip\n");
 	if ((ret =
 	     af9005_write_register_bits(state->d, xd_p_reg_dca_en,
 					reg_dca_en_pos, reg_dca_en_len, 0)))
@@ -917,12 +917,12 @@ static int af9005_fe_init(struct dvb_frontend *fe)
 		return ret;
 
 	/* init other parameters: program cfoe and select bandwidth */
-	deb_info("program cfoe\n");
+	dbg_info("program cfoe\n");
 	ret = af9005_fe_program_cfoe(state->d, 6000000);
 	if (ret)
 		return ret;
 	/* set read-update bit for modulation */
-	deb_info("set read-update bit for modulation\n");
+	dbg_info("set read-update bit for modulation\n");
 	if ((ret =
 	     af9005_write_register_bits(state->d, xd_p_reg_feq_read_update,
 					reg_feq_read_update_pos,
@@ -933,7 +933,7 @@ static int af9005_fe_init(struct dvb_frontend *fe)
 	   but sniffing reveals that it doesn't do it */
 
 	/* set read-update bit to 1 for DCA modulation */
-	deb_info("set read-update bit 1 for DCA modulation\n");
+	dbg_info("set read-update bit 1 for DCA modulation\n");
 	if ((ret =
 	     af9005_write_register_bits(state->d, xd_p_reg_dca_read_update,
 					reg_dca_read_update_pos,
@@ -941,7 +941,7 @@ static int af9005_fe_init(struct dvb_frontend *fe)
 		return ret;
 
 	/* enable fec monitor */
-	deb_info("enable fec monitor\n");
+	dbg_info("enable fec monitor\n");
 	if ((ret =
 	     af9005_write_register_bits(state->d, xd_p_fec_vtb_rsd_mon_en,
 					fec_vtb_rsd_mon_en_pos,
@@ -952,12 +952,12 @@ static int af9005_fe_init(struct dvb_frontend *fe)
 	ret = af9005_write_ofdm_register(state->d, 0xa601, 0);
 
 	/* set api_retrain_never_freeze */
-	deb_info("set api_retrain_never_freeze\n");
+	dbg_info("set api_retrain_never_freeze\n");
 	if ((ret = af9005_write_ofdm_register(state->d, 0xaefb, 0x01)))
 		return ret;
 
 	/* load init script */
-	deb_info("load init script\n");
+	dbg_info("load init script\n");
 	scriptlen = sizeof(script) / sizeof(RegDesc);
 	for (i = 0; i < scriptlen; i++) {
 		if ((ret =
@@ -989,7 +989,7 @@ static int af9005_fe_init(struct dvb_frontend *fe)
 
 
 	/* save original TOPs */
-	deb_info("save original TOPs\n");
+	dbg_info("save original TOPs\n");
 
 	/*  RF TOP */
 	ret =
@@ -1031,7 +1031,7 @@ static int af9005_fe_init(struct dvb_frontend *fe)
 			err("Impossible to read EEPROM\n");
 			return ret;
 		}
-		deb_info("Tuner id %d, board id %d\n", buf[0], buf[1]);
+		dbg_info("Tuner id %d, board id %d\n", buf[0], buf[1]);
 		switch (buf[0]) {
 		case 2:	/* MT2060 */
 			/* read if1 from eeprom */
@@ -1043,7 +1043,7 @@ static int af9005_fe_init(struct dvb_frontend *fe)
 			if1 = (u16) (buf[0] << 8) + buf[1];
 			if (dvb_attach(mt2060_attach, fe, &adap->dev->i2c_adap,
 					 &af9005_mt2060_config, if1) == NULL) {
-				deb_info("MT2060 attach failed\n");
+				dbg_info("MT2060 attach failed\n");
 				return -ENODEV;
 			}
 			break;
@@ -1051,7 +1051,7 @@ static int af9005_fe_init(struct dvb_frontend *fe)
 		case 9:	/* QT1010B */
 			if (dvb_attach(qt1010_attach, fe, &adap->dev->i2c_adap,
 					&af9005_qt1010_config) ==NULL) {
-				deb_info("QT1010 attach failed\n");
+				dbg_info("QT1010 attach failed\n");
 				return -ENODEV;
 			}
 			break;
@@ -1064,7 +1064,7 @@ static int af9005_fe_init(struct dvb_frontend *fe)
 			return ret;
 	}
 
-	deb_info("profit!\n");
+	dbg_info("profit!\n");
 	return 0;
 }
 
@@ -1095,14 +1095,14 @@ static int af9005_fe_set_frontend(struct dvb_frontend *fe)
 	int ret;
 	u8 temp, temp0, temp1, temp2;
 
-	deb_info("af9005_fe_set_frontend freq %d bw %d\n", fep->frequency,
-		 fep->bandwidth_hz);
+	dbg_info("%s: freq %d bw %d\n",
+		 __func__, fep->frequency, fep->bandwidth_hz);
 	if (fe->ops.tuner_ops.release == NULL) {
 		err("Tuner not attached");
 		return -ENODEV;
 	}
 
-	deb_info("turn off led\n");
+	dbg_info("turn off led\n");
 	/* not in the log */
 	ret = af9005_led_control(state->d, 0);
 	if (ret)
@@ -1113,7 +1113,7 @@ static int af9005_fe_set_frontend(struct dvb_frontend *fe)
 		return ret;
 
 	/* set FCW to default value */
-	deb_info("set FCW to default value\n");
+	dbg_info("set FCW to default value\n");
 	temp0 = (u8) (state->original_fcw & 0x000000ff);
 	temp1 = (u8) ((state->original_fcw & 0x0000ff00) >> 8);
 	temp2 = (u8) ((state->original_fcw & 0x00ff0000) >> 16);
@@ -1128,7 +1128,7 @@ static int af9005_fe_set_frontend(struct dvb_frontend *fe)
 		return ret;
 
 	/* restore original TOPs */
-	deb_info("restore original TOPs\n");
+	dbg_info("restore original TOPs\n");
 	ret =
 	    af9005_write_word_agc(state->d,
 				  xd_p_reg_aagc_rf_top_numerator_9_8,
@@ -1155,7 +1155,7 @@ static int af9005_fe_set_frontend(struct dvb_frontend *fe)
 		return ret;
 
 	/* select bandwidth */
-	deb_info("select bandwidth");
+	dbg_info("select bandwidth");
 	ret = af9005_fe_select_bw(state->d, fep->bandwidth_hz);
 	if (ret)
 		return ret;
@@ -1164,33 +1164,33 @@ static int af9005_fe_set_frontend(struct dvb_frontend *fe)
 		return ret;
 
 	/* clear easy mode flag */
-	deb_info("clear easy mode flag\n");
+	dbg_info("clear easy mode flag\n");
 	ret = af9005_write_ofdm_register(state->d, 0xaefd, 0);
 	if (ret)
 		return ret;
 
 	/* set unplug threshold to original value */
-	deb_info("set unplug threshold to original value\n");
+	dbg_info("set unplug threshold to original value\n");
 	ret =
 	    af9005_write_ofdm_register(state->d, xd_p_reg_unplug_th,
 				       state->original_if_unplug_th);
 	if (ret)
 		return ret;
 	/* set tuner */
-	deb_info("set tuner\n");
+	dbg_info("set tuner\n");
 	ret = fe->ops.tuner_ops.set_params(fe);
 	if (ret)
 		return ret;
 
 	/* trigger ofsm */
-	deb_info("trigger ofsm\n");
+	dbg_info("trigger ofsm\n");
 	temp = 0;
 	ret = af9005_write_tuner_registers(state->d, 0xffff, &temp, 1);
 	if (ret)
 		return ret;
 
 	/* clear retrain and freeze flag */
-	deb_info("clear retrain and freeze flag\n");
+	dbg_info("clear retrain and freeze flag\n");
 	ret =
 	    af9005_write_register_bits(state->d,
 				       xd_p_reg_api_retrain_request,
@@ -1228,20 +1228,20 @@ static int af9005_fe_get_frontend(struct dvb_frontend *fe,
 				      &temp);
 	if (ret)
 		return ret;
-	deb_info("===== fe_get_frontend_legacy = =============\n");
-	deb_info("CONSTELLATION ");
+	dbg_info("===== fe_get_frontend_legacy = =============\n");
+	dbg_info("CONSTELLATION ");
 	switch (temp) {
 	case 0:
 		fep->modulation = QPSK;
-		deb_info("QPSK\n");
+		dbg_info("QPSK\n");
 		break;
 	case 1:
 		fep->modulation = QAM_16;
-		deb_info("QAM_16\n");
+		dbg_info("QAM_16\n");
 		break;
 	case 2:
 		fep->modulation = QAM_64;
-		deb_info("QAM_64\n");
+		dbg_info("QAM_64\n");
 		break;
 	}
 
@@ -1252,23 +1252,23 @@ static int af9005_fe_get_frontend(struct dvb_frontend *fe,
 				      &temp);
 	if (ret)
 		return ret;
-	deb_info("HIERARCHY ");
+	dbg_info("HIERARCHY ");
 	switch (temp) {
 	case 0:
 		fep->hierarchy = HIERARCHY_NONE;
-		deb_info("NONE\n");
+		dbg_info("NONE\n");
 		break;
 	case 1:
 		fep->hierarchy = HIERARCHY_1;
-		deb_info("1\n");
+		dbg_info("1\n");
 		break;
 	case 2:
 		fep->hierarchy = HIERARCHY_2;
-		deb_info("2\n");
+		dbg_info("2\n");
 		break;
 	case 3:
 		fep->hierarchy = HIERARCHY_4;
-		deb_info("4\n");
+		dbg_info("4\n");
 		break;
 	}
 
@@ -1279,7 +1279,7 @@ static int af9005_fe_get_frontend(struct dvb_frontend *fe,
 	if (ret)
 		return ret;
 	/* if temp is set = high priority */
-	deb_info("PRIORITY %s\n", temp ? "high" : "low");
+	dbg_info("PRIORITY %s\n", temp ? "high" : "low");
 
 	/* high coderate */
 	ret =
@@ -1288,27 +1288,27 @@ static int af9005_fe_get_frontend(struct dvb_frontend *fe,
 				      &temp);
 	if (ret)
 		return ret;
-	deb_info("CODERATE HP ");
+	dbg_info("CODERATE HP ");
 	switch (temp) {
 	case 0:
 		fep->code_rate_HP = FEC_1_2;
-		deb_info("FEC_1_2\n");
+		dbg_info("FEC_1_2\n");
 		break;
 	case 1:
 		fep->code_rate_HP = FEC_2_3;
-		deb_info("FEC_2_3\n");
+		dbg_info("FEC_2_3\n");
 		break;
 	case 2:
 		fep->code_rate_HP = FEC_3_4;
-		deb_info("FEC_3_4\n");
+		dbg_info("FEC_3_4\n");
 		break;
 	case 3:
 		fep->code_rate_HP = FEC_5_6;
-		deb_info("FEC_5_6\n");
+		dbg_info("FEC_5_6\n");
 		break;
 	case 4:
 		fep->code_rate_HP = FEC_7_8;
-		deb_info("FEC_7_8\n");
+		dbg_info("FEC_7_8\n");
 		break;
 	}
 
@@ -1319,27 +1319,27 @@ static int af9005_fe_get_frontend(struct dvb_frontend *fe,
 				      &temp);
 	if (ret)
 		return ret;
-	deb_info("CODERATE LP ");
+	dbg_info("CODERATE LP ");
 	switch (temp) {
 	case 0:
 		fep->code_rate_LP = FEC_1_2;
-		deb_info("FEC_1_2\n");
+		dbg_info("FEC_1_2\n");
 		break;
 	case 1:
 		fep->code_rate_LP = FEC_2_3;
-		deb_info("FEC_2_3\n");
+		dbg_info("FEC_2_3\n");
 		break;
 	case 2:
 		fep->code_rate_LP = FEC_3_4;
-		deb_info("FEC_3_4\n");
+		dbg_info("FEC_3_4\n");
 		break;
 	case 3:
 		fep->code_rate_LP = FEC_5_6;
-		deb_info("FEC_5_6\n");
+		dbg_info("FEC_5_6\n");
 		break;
 	case 4:
 		fep->code_rate_LP = FEC_7_8;
-		deb_info("FEC_7_8\n");
+		dbg_info("FEC_7_8\n");
 		break;
 	}
 
@@ -1349,23 +1349,23 @@ static int af9005_fe_get_frontend(struct dvb_frontend *fe,
 				      reg_tpsd_gi_pos, reg_tpsd_gi_len, &temp);
 	if (ret)
 		return ret;
-	deb_info("GUARD INTERVAL ");
+	dbg_info("GUARD INTERVAL ");
 	switch (temp) {
 	case 0:
 		fep->guard_interval = GUARD_INTERVAL_1_32;
-		deb_info("1_32\n");
+		dbg_info("1_32\n");
 		break;
 	case 1:
 		fep->guard_interval = GUARD_INTERVAL_1_16;
-		deb_info("1_16\n");
+		dbg_info("1_16\n");
 		break;
 	case 2:
 		fep->guard_interval = GUARD_INTERVAL_1_8;
-		deb_info("1_8\n");
+		dbg_info("1_8\n");
 		break;
 	case 3:
 		fep->guard_interval = GUARD_INTERVAL_1_4;
-		deb_info("1_4\n");
+		dbg_info("1_4\n");
 		break;
 	}
 
@@ -1376,15 +1376,15 @@ static int af9005_fe_get_frontend(struct dvb_frontend *fe,
 				      &temp);
 	if (ret)
 		return ret;
-	deb_info("TRANSMISSION MODE ");
+	dbg_info("TRANSMISSION MODE ");
 	switch (temp) {
 	case 0:
 		fep->transmission_mode = TRANSMISSION_MODE_2K;
-		deb_info("2K\n");
+		dbg_info("2K\n");
 		break;
 	case 1:
 		fep->transmission_mode = TRANSMISSION_MODE_8K;
-		deb_info("8K\n");
+		dbg_info("8K\n");
 		break;
 	}
 
@@ -1392,19 +1392,19 @@ static int af9005_fe_get_frontend(struct dvb_frontend *fe,
 	ret =
 	    af9005_read_register_bits(state->d, xd_g_reg_bw, reg_bw_pos,
 				      reg_bw_len, &temp);
-	deb_info("BANDWIDTH ");
+	dbg_info("BANDWIDTH ");
 	switch (temp) {
 	case 0:
 		fep->bandwidth_hz = 6000000;
-		deb_info("6\n");
+		dbg_info("6\n");
 		break;
 	case 1:
 		fep->bandwidth_hz = 7000000;
-		deb_info("7\n");
+		dbg_info("7\n");
 		break;
 	case 2:
 		fep->bandwidth_hz = 8000000;
-		deb_info("8\n");
+		dbg_info("8\n");
 		break;
 	}
 	return 0;
@@ -1428,7 +1428,7 @@ struct dvb_frontend *af9005_fe_attach(struct dvb_usb_device *d)
 	if (state == NULL)
 		goto error;
 
-	deb_info("attaching frontend af9005\n");
+	dbg_info("attaching frontend af9005\n");
 
 	state->d = d;
 	state->opened = 0;
diff --git a/drivers/media/usb/dvb-usb/af9005-remote.c b/drivers/media/usb/dvb-usb/af9005-remote.c
index 41d48b3c8d05..9eff44ff7967 100644
--- a/drivers/media/usb/dvb-usb/af9005-remote.c
+++ b/drivers/media/usb/dvb-usb/af9005-remote.c
@@ -18,7 +18,8 @@ MODULE_PARM_DESC(debug,
 		 "enable (1) or disable (0) debug messages."
 		 DVB_USB_DEBUG_STATUS);
 
-#define deb_decode(args...)   dprintk(dvb_usb_af9005_remote_debug,0x01,args)
+#define dbg_decode(fmt, ...)						\
+	dprintk(dvb_usb_af9005_remote_debug, 0x01, fmt, ##__VA_ARGS__)
 
 struct rc_map_table rc_map_af9005_table[] = {
 
@@ -86,12 +87,12 @@ int af9005_rc_decode(struct dvb_usb_device *d, u8 * data, int len, u32 * event,
 				if (d->last_event == repeatable_keys[i]) {
 					*state = REMOTE_KEY_REPEAT;
 					*event = d->last_event;
-					deb_decode("repeat key, event %x\n",
+					dbg_decode("repeat key, event %x\n",
 						   *event);
 					return 0;
 				}
 			}
-			deb_decode("repeated key ignored (non repeatable)\n");
+			dbg_decode("repeated key ignored (non repeatable)\n");
 			return 0;
 		} else if (len >= 33 * 4) {	/*32 bits + start code */
 			result = 0;
@@ -104,17 +105,16 @@ int af9005_rc_decode(struct dvb_usb_device *d, u8 * data, int len, u32 * event,
 				if (mark * 2 > space)
 					result += 1;
 			}
-			deb_decode("key pressed, raw value %x\n", result);
+			dbg_decode("key pressed, raw value %x\n", result);
 			if ((result & 0xff000000) != 0xfe000000) {
-				deb_decode
-				    ("doesn't start with 0xfe, ignored\n");
+				dbg_decode("doesn't start with 0xfe, ignored\n");
 				return 0;
 			}
 			cust = (result >> 16) & 0xff;
 			dat = (result >> 8) & 0xff;
 			invdat = (~result) & 0xff;
 			if (dat != invdat) {
-				deb_decode("code != inverted code\n");
+				dbg_decode("code != inverted code\n");
 				return 0;
 			}
 			for (i = 0; i < rc_map_af9005_table_size; i++) {
@@ -122,12 +122,12 @@ int af9005_rc_decode(struct dvb_usb_device *d, u8 * data, int len, u32 * event,
 				    && rc5_data(&rc_map_af9005_table[i]) == dat) {
 					*event = rc_map_af9005_table[i].keycode;
 					*state = REMOTE_KEY_PRESSED;
-					deb_decode
-					    ("key pressed, event %x\n", *event);
+					dbg_decode("key pressed, event %x\n",
+						   *event);
 					return 0;
 				}
 			}
-			deb_decode("not found in table\n");
+			dbg_decode("not found in table\n");
 		}
 	}
 	return 0;
diff --git a/drivers/media/usb/dvb-usb/af9005.c b/drivers/media/usb/dvb-usb/af9005.c
index b6a2436d16e9..c7239ae61552 100644
--- a/drivers/media/usb/dvb-usb/af9005.c
+++ b/drivers/media/usb/dvb-usb/af9005.c
@@ -134,14 +134,13 @@ static int af9005_generic_read_write(struct dvb_usb_device *d, u16 reg,
 int af9005_read_ofdm_register(struct dvb_usb_device *d, u16 reg, u8 * value)
 {
 	int ret;
-	deb_reg("read register %x ", reg);
 	ret = af9005_generic_read_write(d, reg,
 					AF9005_CMD_READ, AF9005_OFDM_REG,
 					value, 1);
 	if (ret)
-		deb_reg("failed\n");
+		dbg_reg("read register %x failed\n", reg);
 	else
-		deb_reg("value %x\n", *value);
+		dbg_reg("read register %x value %x\n", reg, *value);
 	return ret;
 }
 
@@ -149,14 +148,14 @@ int af9005_read_ofdm_registers(struct dvb_usb_device *d, u16 reg,
 			       u8 * values, int len)
 {
 	int ret;
-	deb_reg("read %d registers %x ", len, reg);
 	ret = af9005_generic_read_write(d, reg,
 					AF9005_CMD_READ, AF9005_OFDM_REG,
 					values, len);
 	if (ret)
-		deb_reg("failed\n");
+		dbg_reg("read %d registers %x failed\n", len, reg);
 	else
-		debug_dump(values, len, deb_reg);
+		dbg_reg("read %d registers %x %*ph\n", len, reg, len, values);
+
 	return ret;
 }
 
@@ -164,14 +163,12 @@ int af9005_write_ofdm_register(struct dvb_usb_device *d, u16 reg, u8 value)
 {
 	int ret;
 	u8 temp = value;
-	deb_reg("write register %x value %x ", reg, value);
 	ret = af9005_generic_read_write(d, reg,
 					AF9005_CMD_WRITE, AF9005_OFDM_REG,
 					&temp, 1);
-	if (ret)
-		deb_reg("failed\n");
-	else
-		deb_reg("ok\n");
+	dbg_reg("write register %x value %x %s\n",
+		reg, value, ret ? "failed" : "ok");
+
 	return ret;
 }
 
@@ -179,16 +176,15 @@ int af9005_write_ofdm_registers(struct dvb_usb_device *d, u16 reg,
 				u8 * values, int len)
 {
 	int ret;
-	deb_reg("write %d registers %x values ", len, reg);
-	debug_dump(values, len, deb_reg);
+	dbg_reg("write %d registers %x values %*ph\n", len, reg, len, values);
 
 	ret = af9005_generic_read_write(d, reg,
 					AF9005_CMD_WRITE, AF9005_OFDM_REG,
 					values, len);
 	if (ret)
-		deb_reg("failed\n");
+		dbg_reg("failed\n");
 	else
-		deb_reg("ok\n");
+		dbg_reg("ok\n");
 	return ret;
 }
 
@@ -197,14 +193,14 @@ int af9005_read_register_bits(struct dvb_usb_device *d, u16 reg, u8 pos,
 {
 	u8 temp;
 	int ret;
-	deb_reg("read bits %x %x %x", reg, pos, len);
+	dbg_reg("read bits %x %x %x", reg, pos, len);
 	ret = af9005_read_ofdm_register(d, reg, &temp);
 	if (ret) {
-		deb_reg(" failed\n");
+		dbg_reg("read bits %x %x %x failed\n", reg, pos, len);
 		return ret;
 	}
 	*value = (temp >> pos) & regmask[len - 1];
-	deb_reg(" value %x\n", *value);
+	dbg_reg("read bits %x %x %x value %x\n", reg, pos, len, *value);
 	return 0;
 
 }
@@ -214,7 +210,7 @@ int af9005_write_register_bits(struct dvb_usb_device *d, u16 reg, u8 pos,
 {
 	u8 temp, mask;
 	int ret;
-	deb_reg("write bits %x %x %x value %x\n", reg, pos, len, value);
+	dbg_reg("write bits %x %x %x value %x\n", reg, pos, len, value);
 	if (pos == 0 && len == 8)
 		return af9005_write_ofdm_register(d, reg, value);
 	ret = af9005_read_ofdm_register(d, reg, &temp);
@@ -353,9 +349,8 @@ static int af9005_i2c_write(struct dvb_usb_device *d, u8 i2caddr, u8 reg,
 {
 	int ret, i;
 	u8 buf[3];
-	deb_i2c("i2c_write i2caddr %x, reg %x, len %d data ", i2caddr,
-		reg, len);
-	debug_dump(data, len, deb_i2c);
+	dbg_i2c("i2c_write i2caddr %x, reg %x, len %d data %*ph\n",
+		i2caddr, reg, len, len, data);
 
 	for (i = 0; i < len; i++) {
 		buf[0] = i2caddr;
@@ -366,11 +361,11 @@ static int af9005_i2c_write(struct dvb_usb_device *d, u8 i2caddr, u8 reg,
 						 APO_REG_I2C_RW_SILICON_TUNER,
 						 buf, 3);
 		if (ret) {
-			deb_i2c("i2c_write failed\n");
+			dbg_i2c("i2c_write failed\n");
 			return ret;
 		}
 	}
-	deb_i2c("i2c_write ok\n");
+	dbg_i2c("i2c_write ok\n");
 	return 0;
 }
 
@@ -379,7 +374,7 @@ static int af9005_i2c_read(struct dvb_usb_device *d, u8 i2caddr, u8 reg,
 {
 	int ret, i;
 	u8 temp;
-	deb_i2c("i2c_read i2caddr %x, reg %x, len %d\n ", i2caddr, reg, len);
+	dbg_i2c("i2c_read i2caddr %x, reg %x, len %d\n ", i2caddr, reg, len);
 	for (i = 0; i < len; i++) {
 		temp = reg + i;
 		ret =
@@ -387,13 +382,12 @@ static int af9005_i2c_read(struct dvb_usb_device *d, u8 i2caddr, u8 reg,
 						APO_REG_I2C_RW_SILICON_TUNER,
 						i2caddr, &temp, 1);
 		if (ret) {
-			deb_i2c("i2c_read failed\n");
+			dbg_i2c("i2c_read failed\n");
 			return ret;
 		}
 		data[i] = temp;
 	}
-	deb_i2c("i2c data read: ");
-	debug_dump(data, len, deb_i2c);
+	dbg_i2c("i2c data read: %*ph\n", len, data);
 	return 0;
 }
 
@@ -597,8 +591,7 @@ static int af9005_boot_packet(struct usb_device *udev, int type, u8 *reply,
 		err("boot packet invalid boot packet type");
 		return -EINVAL;
 	}
-	deb_fw(">>> ");
-	debug_dump(buf, FW_BULKOUT_SIZE + 2, deb_fw);
+	dbg_fw(">>> %*ph\n", FW_BULKOUT_SIZE + 2, buf);
 
 	ret = usb_bulk_msg(udev,
 			   usb_sndbulkpipe(udev, 0x02),
@@ -617,8 +610,7 @@ static int af9005_boot_packet(struct usb_device *udev, int type, u8 *reply,
 		err("boot packet recv bulk message failed: %d", ret);
 		return ret;
 	}
-	deb_fw("<<< ");
-	debug_dump(buf, act_len, deb_fw);
+	dbg_fw("<<< %*ph\n", act_len, buf);
 	checksum = 0;
 	switch (type) {
 	case FW_CONFIG:
@@ -731,8 +723,7 @@ static int af9005_download_firmware(struct usb_device *udev, const struct firmwa
 	for (i = 0; i < packets; i++) {
 		memcpy(&buf[2], fw->data + i * FW_BULKOUT_SIZE,
 		       FW_BULKOUT_SIZE);
-		deb_fw(">>> ");
-		debug_dump(buf, FW_BULKOUT_SIZE + 2, deb_fw);
+		dbg_fw(">>> %*ph\n", FW_BULKOUT_SIZE + 2, buf);
 		ret = usb_bulk_msg(udev,
 				   usb_sndbulkpipe(udev, 0x02),
 				   buf, FW_BULKOUT_SIZE + 2, &act_len, 1000);
@@ -810,10 +801,10 @@ static int af9005_frontend_attach(struct dvb_usb_adapter *adap)
 	usb_clear_halt(udev, usb_sndbulkpipe(udev, 2));
 	usb_clear_halt(udev, usb_rcvbulkpipe(udev, 1));
 	if (dvb_usb_af9005_dump_eeprom) {
-		printk("EEPROM DUMP\n");
+		printk(KERN_DEBUG "EEPROM DUMP\n");
 		for (i = 0; i < 255; i += 8) {
 			af9005_read_eeprom(adap->dev, i, buf, 8);
-			debug_dump(buf, 8, printk);
+			printk(KERN_DEBUG "%*ph\n", 8, buf);
 		}
 	}
 	adap->fe_adap[0].fe = af9005_fe_attach(adap->dev);
@@ -834,7 +825,7 @@ static int af9005_rc_query(struct dvb_usb_device *d, u32 * event, int *state)
 
 	mutex_lock(&d->data_mutex);
 
-	/* deb_info("rc_query\n"); */
+	/* dbg_info("rc_query\n"); */
 	st->data[0] = 3;		/* rest of packet length low */
 	st->data[1] = 0;		/* rest of packet length high */
 	st->data[2] = 0x40;		/* read remote */
@@ -861,14 +852,13 @@ static int af9005_rc_query(struct dvb_usb_device *d, u32 * event, int *state)
 		goto ret;
 	}
 	if (len > 0) {
-		deb_rc("rc data (%d) ", len);
-		debug_dump((st->data + 6), len, deb_rc);
+		dbg_rc("rc data (%d) %*ph\n", len, len, st->data + 6);
 		ret = rc_decode(d, &st->data[6], len, event, state);
 		if (ret) {
 			err("rc_decode failed");
 			goto ret;
 		} else {
-			deb_rc("rc_decode state %x event %x\n", *state, *event);
+			dbg_rc("rc_decode state %x event %x\n", *state, *event);
 			if (*state == REMOTE_KEY_REPEAT)
 				*event = d->last_event;
 		}
@@ -888,7 +878,7 @@ static int af9005_power_ctrl(struct dvb_usb_device *d, int onoff)
 static int af9005_pid_filter_control(struct dvb_usb_adapter *adap, int onoff)
 {
 	int ret;
-	deb_info("pid filter control  onoff %d\n", onoff);
+	dbg_info("pid filter control  onoff %d\n", onoff);
 	if (onoff) {
 		ret =
 		    af9005_write_ofdm_register(adap->dev, XD_MP2IF_DMX_CTRL, 1);
@@ -906,7 +896,7 @@ static int af9005_pid_filter_control(struct dvb_usb_adapter *adap, int onoff)
 		    af9005_write_ofdm_register(adap->dev, XD_MP2IF_DMX_CTRL, 0);
 	if (ret)
 		return ret;
-	deb_info("pid filter control ok\n");
+	dbg_info("pid filter control ok\n");
 	return 0;
 }
 
@@ -915,13 +905,13 @@ static int af9005_pid_filter(struct dvb_usb_adapter *adap, int index,
 {
 	u8 cmd = index & 0x1f;
 	int ret;
-	deb_info("set pid filter, index %d, pid %x, onoff %d\n", index,
+	dbg_info("set pid filter, index %d, pid %x, onoff %d\n", index,
 		 pid, onoff);
 	if (onoff) {
 		/* cannot use it as pid_filter_ctrl since it has to be done
 		   before setting the first pid */
 		if (adap->feedcount == 1) {
-			deb_info("first pid set, enable pid table\n");
+			dbg_info("first pid set, enable pid table\n");
 			ret = af9005_pid_filter_control(adap, onoff);
 			if (ret)
 				return ret;
@@ -941,7 +931,7 @@ static int af9005_pid_filter(struct dvb_usb_adapter *adap, int index,
 		cmd |= 0x20 | 0x40;
 	} else {
 		if (adap->feedcount == 0) {
-			deb_info("last pid unset, disable pid table\n");
+			dbg_info("last pid unset, disable pid table\n");
 			ret = af9005_pid_filter_control(adap, onoff);
 			if (ret)
 				return ret;
@@ -950,7 +940,7 @@ static int af9005_pid_filter(struct dvb_usb_adapter *adap, int index,
 	ret = af9005_write_ofdm_register(adap->dev, XD_MP2IF_PID_IDX, cmd);
 	if (ret)
 		return ret;
-	deb_info("set pid ok\n");
+	dbg_info("set pid ok\n");
 	return 0;
 }
 
@@ -970,7 +960,7 @@ static int af9005_identify_state(struct usb_device *udev,
 				 buf, FW_BULKOUT_SIZE + 2);
 	if (ret)
 		goto err;
-	deb_info("result of FW_CONFIG in identify state %d\n", reply);
+	dbg_info("result of FW_CONFIG in identify state %d\n", reply);
 	if (reply == 0x01)
 		*cold = 1;
 	else if (reply == 0x02)
@@ -978,7 +968,7 @@ static int af9005_identify_state(struct usb_device *udev,
 	else
 		ret = -EIO;
 	if (!ret)
-		deb_info("Identify state cold = %d\n", *cold);
+		dbg_info("Identify state cold = %d\n", *cold);
 
 err:
 	kfree(buf);
diff --git a/drivers/media/usb/dvb-usb/af9005.h b/drivers/media/usb/dvb-usb/af9005.h
index 11d74dc26d83..360fa719fe3f 100644
--- a/drivers/media/usb/dvb-usb/af9005.h
+++ b/drivers/media/usb/dvb-usb/af9005.h
@@ -15,12 +15,18 @@
 #include "dvb-usb.h"
 
 extern int dvb_usb_af9005_debug;
-#define deb_info(args...) dprintk(dvb_usb_af9005_debug,0x01,args)
-#define deb_xfer(args...) dprintk(dvb_usb_af9005_debug,0x02,args)
-#define deb_rc(args...)   dprintk(dvb_usb_af9005_debug,0x04,args)
-#define deb_reg(args...)  dprintk(dvb_usb_af9005_debug,0x08,args)
-#define deb_i2c(args...)  dprintk(dvb_usb_af9005_debug,0x10,args)
-#define deb_fw(args...)   dprintk(dvb_usb_af9005_debug,0x20,args)
+#define dbg_info(fmt, ...)						\
+	dprintk(dvb_usb_af9005_debug, 0x01, fmt, ##__VA_ARGS__)
+#define dbg_xfer(fmt, ...)						\
+	dprintk(dvb_usb_af9005_debug, 0x02, fmt, ##__VA_ARGS__)
+#define dbg_rc(fmt, ...)						\
+	dprintk(dvb_usb_af9005_debug, 0x04, fmt, ##__VA_ARGS__)
+#define dbg_reg(fmt, ...)						\
+	dprintk(dvb_usb_af9005_debug, 0x08, fmt, ##__VA_ARGS__)
+#define dbg_i2c(fmt, ...)						\
+	dprintk(dvb_usb_af9005_debug, 0x10, fmt, ##__VA_ARGS__)
+#define dbg_fw(fmt, ...)						\
+	dprintk(dvb_usb_af9005_debug, 0x20, fmt, ##__VA_ARGS__)
 
 extern bool dvb_usb_af9005_led;
 
diff --git a/drivers/media/usb/dvb-usb/az6027.c b/drivers/media/usb/dvb-usb/az6027.c
index 1c39b61cde29..82160c22aba5 100644
--- a/drivers/media/usb/dvb-usb/az6027.c
+++ b/drivers/media/usb/dvb-usb/az6027.c
@@ -318,8 +318,8 @@ static int az6027_usb_in_op(struct dvb_usb_device *d, u8 req,
 	} else
 		ret = 0;
 
-	deb_xfer("in: req. %02x, val: %04x, ind: %04x, buffer: ", req, value, index);
-	debug_dump(b, blen, deb_xfer);
+	dbg_xfer("in: req. %02x, val: %04x, ind: %04x, buffer: %*ph\n",
+		 req, value, index, blen, b);
 
 	mutex_unlock(&d->usb_mutex);
 	return ret;
@@ -334,8 +334,8 @@ static int az6027_usb_out_op(struct dvb_usb_device *d,
 {
 	int ret;
 
-	deb_xfer("out: req. %02x, val: %04x, ind: %04x, buffer: ", req, value, index);
-	debug_dump(b, blen, deb_xfer);
+	dbg_xfer("out: req. %02x, val: %04x, ind: %04x, buffer: %*ph\n",
+		 req, value, index, blen, b);
 
 	if (mutex_lock_interruptible(&d->usb_mutex))
 		return -EAGAIN;
@@ -368,7 +368,7 @@ static int az6027_streaming_ctrl(struct dvb_usb_adapter *adap, int onoff)
 	u16 index;
 	int blen;
 
-	deb_info("%s %d", __func__, onoff);
+	dbg_info("%s %d", __func__, onoff);
 
 	req = 0xBC;
 	value = onoff;
@@ -457,7 +457,7 @@ static int az6027_ci_write_attribute_mem(struct dvb_ca_en50221 *ca,
 	u16 index;
 	int blen;
 
-	deb_info("%s %d", __func__, slot);
+	dbg_info("%s %d", __func__, slot);
 	if (slot != 0)
 		return -EINVAL;
 
@@ -512,7 +512,7 @@ static int az6027_ci_read_cam_control(struct dvb_ca_en50221 *ca,
 			warn("Read CI IO error");
 
 		ret = b[1];
-		deb_info("read cam data = %x from 0x%x", b[1], value);
+		dbg_info("read cam data = %x from 0x%x", b[1], value);
 	}
 
 	mutex_unlock(&state->ca_mutex);
@@ -625,7 +625,7 @@ static int az6027_ci_slot_reset(struct dvb_ca_en50221 *ca, int slot)
 		msleep(100);
 
 		if (CI_CamReady(ca, slot)) {
-			deb_info("CAM Ready");
+			dbg_info("CAM Ready");
 			break;
 		}
 	}
@@ -652,7 +652,7 @@ static int az6027_ci_slot_ts_enable(struct dvb_ca_en50221 *ca, int slot)
 	u16 index;
 	int blen;
 
-	deb_info("%s", __func__);
+	dbg_info("%s", __func__);
 	mutex_lock(&state->ca_mutex);
 	req = 0xC7;
 	value = 1;
@@ -713,7 +713,7 @@ static void az6027_ci_uninit(struct dvb_usb_device *d)
 {
 	struct az6027_device_state *state;
 
-	deb_info("%s", __func__);
+	dbg_info("%s", __func__);
 
 	if (NULL == d)
 		return;
@@ -737,7 +737,7 @@ static int az6027_ci_init(struct dvb_usb_adapter *a)
 	struct az6027_device_state *state = (struct az6027_device_state *)d->priv;
 	int ret;
 
-	deb_info("%s", __func__);
+	dbg_info("%s", __func__);
 
 	mutex_init(&state->ca_mutex);
 
@@ -762,7 +762,7 @@ static int az6027_ci_init(struct dvb_usb_adapter *a)
 		return ret;
 	}
 
-	deb_info("CI initialized.");
+	dbg_info("CI initialized.");
 
 	return 0;
 }
@@ -906,13 +906,15 @@ static int az6027_frontend_attach(struct dvb_usb_adapter *adap)
 	az6027_frontend_poweron(adap);
 	az6027_frontend_reset(adap);
 
-	deb_info("adap = %p, dev = %p\n", adap, adap->dev);
+	dbg_info("adap = %p, dev = %p\n", adap, adap->dev);
 	adap->fe_adap[0].fe = stb0899_attach(&az6027_stb0899_config, &adap->dev->i2c_adap);
 
 	if (adap->fe_adap[0].fe) {
-		deb_info("found STB0899 DVB-S/DVB-S2 frontend @0x%02x", az6027_stb0899_config.demod_address);
+		dbg_info("found STB0899 DVB-S/DVB-S2 frontend @0x%02x\n",
+			 az6027_stb0899_config.demod_address);
 		if (stb6100_attach(adap->fe_adap[0].fe, &az6027_stb6100_config, &adap->dev->i2c_adap)) {
-			deb_info("found STB6100 DVB-S/DVB-S2 frontend @0x%02x", az6027_stb6100_config.tuner_address);
+			dbg_info("found STB6100 DVB-S/DVB-S2 frontend @0x%02x\n",
+				 az6027_stb6100_config.tuner_address);
 			adap->fe_adap[0].fe->ops.set_voltage = az6027_set_voltage;
 			az6027_ci_init(adap);
 		} else {
@@ -1074,7 +1076,7 @@ static int az6027_identify_state(struct usb_device *udev,
 
 	*cold = ret <= 0;
 	kfree(b);
-	deb_info("cold: %d\n", *cold);
+	dbg_info("cold: %d\n", *cold);
 	return 0;
 }
 
diff --git a/drivers/media/usb/dvb-usb/az6027.h b/drivers/media/usb/dvb-usb/az6027.h
index 95b056b36030..42c57a13835c 100644
--- a/drivers/media/usb/dvb-usb/az6027.h
+++ b/drivers/media/usb/dvb-usb/az6027.h
@@ -7,9 +7,9 @@
 
 
 extern int dvb_usb_az6027_debug;
-#define deb_info(args...) dprintk(dvb_usb_az6027_debug, 0x01, args)
-#define deb_xfer(args...) dprintk(dvb_usb_az6027_debug, 0x02, args)
-#define deb_rc(args...)   dprintk(dvb_usb_az6027_debug, 0x04, args)
-#define deb_fe(args...)   dprintk(dvb_usb_az6027_debug, 0x08, args)
+#define dbg_info(args...) dprintk(dvb_usb_az6027_debug, 0x01, args)
+#define dbg_xfer(args...) dprintk(dvb_usb_az6027_debug, 0x02, args)
+#define dbg_rc(args...)   dprintk(dvb_usb_az6027_debug, 0x04, args)
+#define dbg_fe(args...)   dprintk(dvb_usb_az6027_debug, 0x08, args)
 
 #endif
diff --git a/drivers/media/usb/dvb-usb/cinergyT2-core.c b/drivers/media/usb/dvb-usb/cinergyT2-core.c
index 969a7ec71dff..54aad0187af5 100644
--- a/drivers/media/usb/dvb-usb/cinergyT2-core.c
+++ b/drivers/media/usb/dvb-usb/cinergyT2-core.c
@@ -78,7 +78,7 @@ static int cinergyt2_frontend_attach(struct dvb_usb_adapter *adap)
 
 	ret = dvb_usb_generic_rw(d, st->data, 1, st->data, 3, 0);
 	if (ret < 0) {
-		deb_rc("cinergyt2_power_ctrl() Failed to retrieve sleep state info\n");
+		dbg_rc("cinergyt2_power_ctrl() Failed to retrieve sleep state info\n");
 	}
 	mutex_unlock(&d->data_mutex);
 
@@ -164,12 +164,12 @@ static int cinergyt2_rc_query(struct dvb_usb_device *d, u32 *event, int *state)
 				if (d->last_event == repeatable_keys[i]) {
 					*state = REMOTE_KEY_REPEAT;
 					*event = d->last_event;
-					deb_rc("repeat key, event %x\n",
-						   *event);
+					dbg_rc("repeat key, event %x\n",
+					       *event);
 					goto ret;
 				}
 			}
-			deb_rc("repeated key (non repeatable)\n");
+			dbg_rc("repeated key (non repeatable)\n");
 		}
 		goto ret;
 	}
@@ -181,7 +181,7 @@ static int cinergyt2_rc_query(struct dvb_usb_device *d, u32 *event, int *state)
 		if (*event != d->last_event)
 			st->rc_counter = 0;
 
-		deb_rc("key: %*ph\n", 5, st->data);
+		dbg_rc("key: %*ph\n", 5, st->data);
 	}
 
 ret:
diff --git a/drivers/media/usb/dvb-usb/cinergyT2-fe.c b/drivers/media/usb/dvb-usb/cinergyT2-fe.c
index efb207c23a64..fa801bd6a8e7 100644
--- a/drivers/media/usb/dvb-usb/cinergyT2-fe.c
+++ b/drivers/media/usb/dvb-usb/cinergyT2-fe.c
@@ -210,7 +210,7 @@ static int cinergyt2_fe_init(struct dvb_frontend *fe)
 
 static int cinergyt2_fe_sleep(struct dvb_frontend *fe)
 {
-	deb_info("cinergyt2_fe_sleep() Called\n");
+	dbg_info("cinergyt2_fe_sleep() Called\n");
 	return 0;
 }
 
diff --git a/drivers/media/usb/dvb-usb/cinergyT2.h b/drivers/media/usb/dvb-usb/cinergyT2.h
index 18905a0ec43e..b1e2c5021a95 100644
--- a/drivers/media/usb/dvb-usb/cinergyT2.h
+++ b/drivers/media/usb/dvb-usb/cinergyT2.h
@@ -25,15 +25,15 @@
 
 extern int dvb_usb_cinergyt2_debug;
 
-#define deb_info(args...)  dprintk(dvb_usb_cinergyt2_debug,  0x001, args)
-#define deb_xfer(args...)  dprintk(dvb_usb_cinergyt2_debug,  0x002, args)
-#define deb_pll(args...)   dprintk(dvb_usb_cinergyt2_debug,  0x004, args)
-#define deb_ts(args...)    dprintk(dvb_usb_cinergyt2_debug,  0x008, args)
-#define deb_err(args...)   dprintk(dvb_usb_cinergyt2_debug,  0x010, args)
-#define deb_rc(args...)    dprintk(dvb_usb_cinergyt2_debug,  0x020, args)
-#define deb_fw(args...)    dprintk(dvb_usb_cinergyt2_debug,  0x040, args)
-#define deb_mem(args...)   dprintk(dvb_usb_cinergyt2_debug,  0x080, args)
-#define deb_uxfer(args...) dprintk(dvb_usb_cinergyt2_debug,  0x100, args)
+#define dbg_info(args...)  dprintk(dvb_usb_cinergyt2_debug,  0x001, args)
+#define dbg_xfer(args...)  dprintk(dvb_usb_cinergyt2_debug,  0x002, args)
+#define dbg_pll(args...)   dprintk(dvb_usb_cinergyt2_debug,  0x004, args)
+#define dbg_ts(args...)    dprintk(dvb_usb_cinergyt2_debug,  0x008, args)
+#define dbg_err(args...)   dprintk(dvb_usb_cinergyt2_debug,  0x010, args)
+#define dbg_rc(args...)    dprintk(dvb_usb_cinergyt2_debug,  0x020, args)
+#define dbg_fw(args...)    dprintk(dvb_usb_cinergyt2_debug,  0x040, args)
+#define dbg_mem(args...)   dprintk(dvb_usb_cinergyt2_debug,  0x080, args)
+#define dbg_uxfer(args...) dprintk(dvb_usb_cinergyt2_debug,  0x100, args)
 
 
 
diff --git a/drivers/media/usb/dvb-usb/dib0700.h b/drivers/media/usb/dvb-usb/dib0700.h
index 2defbd8b6fc1..a2aecae27a28 100644
--- a/drivers/media/usb/dvb-usb/dib0700.h
+++ b/drivers/media/usb/dvb-usb/dib0700.h
@@ -12,10 +12,14 @@
 #include "dib07x0.h"
 
 extern int dvb_usb_dib0700_debug;
-#define deb_info(args...)   dprintk(dvb_usb_dib0700_debug,0x01,args)
-#define deb_fw(args...)     dprintk(dvb_usb_dib0700_debug,0x02,args)
-#define deb_fwdata(args...) dprintk(dvb_usb_dib0700_debug,0x04,args)
-#define deb_data(args...)   dprintk(dvb_usb_dib0700_debug,0x08,args)
+#define dbg_info(fmt, ...)						\
+	dprintk(dvb_usb_dib0700_debug, 0x01, fmt, ##__VA_ARGS__)
+#define dbg_fw(fmt, ...)						\
+	dprintk(dvb_usb_dib0700_debug, 0x02, fmt, ##__VA_ARGS__)
+#define dbg_fwdata(fmt, ...)						\
+	dprintk(dvb_usb_dib0700_debug, 0x04, fmt, ##__VA_ARGS__)
+#define dbg_data(fmt, ...)						\
+	dprintk(dvb_usb_dib0700_debug, 0x08, fmt, ##__VA_ARGS__)
 
 #define REQUEST_SET_USB_XFER_LEN    0x0 /* valid only for firmware version */
 					/* higher than 1.21 */
diff --git a/drivers/media/usb/dvb-usb/dib0700_core.c b/drivers/media/usb/dvb-usb/dib0700_core.c
index 70219b3e8566..8a8d68d70479 100644
--- a/drivers/media/usb/dvb-usb/dib0700_core.c
+++ b/drivers/media/usb/dvb-usb/dib0700_core.c
@@ -54,15 +54,15 @@ static int dib0700_ctrl_wr(struct dvb_usb_device *d, u8 *tx, u8 txlen)
 {
 	int status;
 
-	deb_data(">>> ");
-	debug_dump(tx, txlen, deb_data);
+	dbg_data(">>> %*ph\n", (int)txlen, tx);
 
 	status = usb_control_msg(d->udev, usb_sndctrlpipe(d->udev,0),
 		tx[0], USB_TYPE_VENDOR | USB_DIR_OUT, 0, 0, tx, txlen,
 		USB_CTRL_GET_TIMEOUT);
 
 	if (status != txlen)
-		deb_data("ep 0 write error (status = %d, len: %d)\n",status,txlen);
+		dbg_data("ep 0 write error (status = %d, len: %d)\n",
+			 status, txlen);
 
 	return status < 0 ? status : 0;
 }
@@ -82,8 +82,7 @@ int dib0700_ctrl_rd(struct dvb_usb_device *d, u8 *tx, u8 txlen, u8 *rx, u8 rxlen
 		return -EINVAL;
 	}
 
-	deb_data(">>> ");
-	debug_dump(tx,txlen,deb_data);
+	dbg_data(">>> %*ph\n", (int)txlen, tx);
 
 	value = ((txlen - 2) << 8) | tx[1];
 	index = 0;
@@ -97,10 +96,9 @@ int dib0700_ctrl_rd(struct dvb_usb_device *d, u8 *tx, u8 txlen, u8 *rx, u8 rxlen
 			USB_CTRL_GET_TIMEOUT);
 
 	if (status < 0)
-		deb_info("ep 0 read error (status = %d)\n",status);
+		dbg_info("ep 0 read error (status = %d)\n", status);
 
-	deb_data("<<< ");
-	debug_dump(rx, rxlen, deb_data);
+	dbg_data("<<< %*ph\n", (int)rxlen, rx);
 
 	return status; /* length in case of success */
 }
@@ -140,12 +138,12 @@ static int dib0700_set_usb_xfer_len(struct dvb_usb_device *d, u16 nb_ts_packets)
 		st->buf[1] = (nb_ts_packets >> 8) & 0xff;
 		st->buf[2] = nb_ts_packets & 0xff;
 
-		deb_info("set the USB xfer len to %i Ts packet\n", nb_ts_packets);
+		dbg_info("set the USB xfer len to %i Ts packet\n", nb_ts_packets);
 
 		ret = dib0700_ctrl_wr(d, st->buf, 3);
 		mutex_unlock(&d->usb_mutex);
 	} else {
-		deb_info("this firmware does not allow to change the USB xfer len\n");
+		dbg_info("this firmware does not allow to change the USB xfer len\n");
 		ret = -EIO;
 	}
 
@@ -211,12 +209,12 @@ static int dib0700_i2c_xfer_new(struct i2c_adapter *adap, struct i2c_msg *msg,
 						 msg[i].len,
 						 USB_CTRL_GET_TIMEOUT);
 			if (result < 0) {
-				deb_info("i2c read error (status = %d)\n", result);
+				dbg_info("i2c read error (status = %d)\n", result);
 				goto unlock;
 			}
 
 			if (msg[i].len > sizeof(st->buf)) {
-				deb_info("buffer too small to fit %d bytes\n",
+				dbg_info("buffer too small to fit %d bytes\n",
 					 msg[i].len);
 				result = -EIO;
 				goto unlock;
@@ -224,8 +222,7 @@ static int dib0700_i2c_xfer_new(struct i2c_adapter *adap, struct i2c_msg *msg,
 
 			memcpy(msg[i].buf, st->buf, msg[i].len);
 
-			deb_data("<<< ");
-			debug_dump(msg[i].buf, msg[i].len, deb_data);
+			dbg_data("<<< %*ph\n", (int)msg[i].len, msg[i].buf);
 
 		} else {
 			/* Write request */
@@ -243,7 +240,7 @@ static int dib0700_i2c_xfer_new(struct i2c_adapter *adap, struct i2c_msg *msg,
 				 ((bus_mode << 4) & 0x30);
 
 			if (msg[i].len > sizeof(st->buf) - 4) {
-				deb_info("i2c message to big: %d\n",
+				dbg_info("i2c message to big: %d\n",
 					 msg[i].len);
 				mutex_unlock(&d->usb_mutex);
 				result = -EIO;
@@ -253,8 +250,7 @@ static int dib0700_i2c_xfer_new(struct i2c_adapter *adap, struct i2c_msg *msg,
 			/* The Actual i2c payload */
 			memcpy(&st->buf[4], msg[i].buf, msg[i].len);
 
-			deb_data(">>> ");
-			debug_dump(st->buf, msg[i].len + 4, deb_data);
+			dbg_data(">>> %*ph\n", (int)(msg[i].len + 4), st->buf);
 
 			result = usb_control_msg(d->udev,
 						 usb_sndctrlpipe(d->udev, 0),
@@ -264,7 +260,7 @@ static int dib0700_i2c_xfer_new(struct i2c_adapter *adap, struct i2c_msg *msg,
 						 USB_CTRL_GET_TIMEOUT);
 			mutex_unlock(&d->usb_mutex);
 			if (result < 0) {
-				deb_info("i2c write error (status = %d)\n", result);
+				dbg_info("i2c write error (status = %d)\n", result);
 				break;
 			}
 		}
@@ -299,8 +295,7 @@ static int dib0700_i2c_xfer_legacy(struct i2c_adapter *adap,
 		st->buf[1] = msg[i].addr << 1;
 		/* fill the buffer */
 		if (msg[i].len > sizeof(st->buf) - 2) {
-			deb_info("i2c xfer to big: %d\n",
-				msg[i].len);
+			dbg_info("i2c xfer too big: %d\n", msg[i].len);
 			result = -EIO;
 			goto unlock;
 		}
@@ -315,15 +310,15 @@ static int dib0700_i2c_xfer_legacy(struct i2c_adapter *adap,
 			len = dib0700_ctrl_rd(d, st->buf, msg[i].len + 2,
 					      st->buf, msg[i + 1].len);
 			if (len <= 0) {
-				deb_info("I2C read failed on address 0x%02x\n",
-						msg[i].addr);
+				dbg_info("I2C read failed on address 0x%02x\n",
+					 msg[i].addr);
 				result = -EIO;
 				goto unlock;
 			}
 
 			if (msg[i + 1].len > sizeof(st->buf)) {
-				deb_info("i2c xfer buffer to small for %d\n",
-					msg[i].len);
+				dbg_info("i2c xfer buffer too small for %d\n",
+					 msg[i].len);
 				result = -EIO;
 				goto unlock;
 			}
@@ -388,10 +383,10 @@ int dib0700_identify_state(struct usb_device *udev,
 	ret = usb_control_msg(udev, usb_rcvctrlpipe(udev, 0),
 		REQUEST_GET_VERSION, USB_TYPE_VENDOR | USB_DIR_IN, 0, 0, b, 16, USB_CTRL_GET_TIMEOUT);
 
-	deb_info("FW GET_VERSION length: %d\n",ret);
+	dbg_info("FW GET_VERSION length: %d\n", ret);
 
 	*cold = ret <= 0;
-	deb_info("cold: %d\n", *cold);
+	dbg_info("cold: %d\n", *cold);
 
 	kfree(b);
 	return 0;
@@ -453,9 +448,11 @@ int dib0700_set_i2c_speed(struct dvb_usb_device *d, u16 scl_kHz)
 	st->buf[6] = (u8) (divider >> 8);
 	st->buf[7] = (u8) (divider & 0xff);
 
-	deb_info("setting I2C speed: %04x %04x %04x (%d kHz).",
-		(st->buf[2] << 8) | (st->buf[3]), (st->buf[4] << 8) |
-		st->buf[5], (st->buf[6] << 8) | st->buf[7], scl_kHz);
+	dbg_info("setting I2C speed: %04x %04x %04x (%d kHz)\n",
+		 (st->buf[2] << 8) | (st->buf[3]),
+		 (st->buf[4] << 8) | (st->buf[5]),
+		 (st->buf[6] << 8) | (st->buf[7]),
+		 scl_kHz);
 
 	ret = dib0700_ctrl_wr(d, st->buf, 8);
 	mutex_unlock(&d->usb_mutex);
@@ -491,11 +488,11 @@ static int dib0700_jumpram(struct usb_device *udev, u32 address)
 	buf[7] =  address        & 0xff;
 
 	if ((ret = usb_bulk_msg(udev, usb_sndbulkpipe(udev, 0x01),buf,8,&actlen,1000)) < 0) {
-		deb_fw("jumpram to 0x%x failed\n",address);
+		dbg_fw("jumpram to 0x%x failed\n", address);
 		goto out;
 	}
 	if (actlen != 8) {
-		deb_fw("jumpram to 0x%x failed\n",address);
+		dbg_fw("jumpram to 0x%x failed\n", address);
 		ret = -EIO;
 		goto out;
 	}
@@ -516,8 +513,8 @@ int dib0700_download_firmware(struct usb_device *udev, const struct firmware *fw
 		return -ENOMEM;
 
 	while ((ret = dvb_usb_get_hexline(fw, &hx, &pos)) > 0) {
-		deb_fwdata("writing to address 0x%08x (buffer: 0x%02x %02x)\n",
-				hx.addr, hx.len, hx.chk);
+		dbg_fwdata("writing to address 0x%08x (buffer: 0x%02x %02x)\n",
+			   hx.addr, hx.len, hx.chk);
 
 		buf[0] = hx.len;
 		buf[1] = (hx.addr >> 8) & 0xff;
@@ -591,7 +588,7 @@ int dib0700_streaming_ctrl(struct dvb_usb_adapter *adap, int onoff)
 		ret = dib0700_set_usb_xfer_len(adap->dev,
 			st->nb_packet_buffer_size);
 		if (ret < 0) {
-			deb_info("can not set the USB xfer len\n");
+			dbg_info("can not set the USB xfer len\n");
 			return ret;
 		}
 	}
@@ -610,12 +607,13 @@ int dib0700_streaming_ctrl(struct dvb_usb_adapter *adap, int onoff)
 
 	st->buf[3] = 0x00;
 
-	deb_info("modifying (%d) streaming state for %d\n", onoff, adap->id);
+	dbg_info("modifying (%d) streaming state for %d\n", onoff, adap->id);
 
 	st->channel_state &= ~0x3;
 	if ((adap->fe_adap[0].stream.props.endpoint != 2)
 			&& (adap->fe_adap[0].stream.props.endpoint != 3)) {
-		deb_info("the endpoint number (%i) is not correct, use the adapter id instead", adap->fe_adap[0].stream.props.endpoint);
+		dbg_info("the endpoint number (%i) is not correct, use the adapter id instead\n",
+			 adap->fe_adap[0].stream.props.endpoint);
 		if (onoff)
 			st->channel_state |=	1 << (adap->id);
 		else
@@ -629,7 +627,7 @@ int dib0700_streaming_ctrl(struct dvb_usb_adapter *adap, int onoff)
 
 	st->buf[2] |= st->channel_state;
 
-	deb_info("data for streaming: %x %x\n", st->buf[1], st->buf[2]);
+	dbg_info("data for streaming: %x %x\n", st->buf[1], st->buf[2]);
 
 	ret = dib0700_ctrl_wr(adap->dev, st->buf, 4);
 	mutex_unlock(&adap->dev->usb_mutex);
@@ -715,7 +713,7 @@ static void dib0700_rc_urb_completion(struct urb *purb)
 	u32 keycode;
 	u8 toggle;
 
-	deb_info("%s()\n", __func__);
+	dbg_info("%s()\n", __func__);
 	if (d->rc_dev == NULL) {
 		/* This will occur if disable_rc_polling=1 */
 		kfree(purb->transfer_buffer);
@@ -726,18 +724,18 @@ static void dib0700_rc_urb_completion(struct urb *purb)
 	poll_reply = purb->transfer_buffer;
 
 	if (purb->status < 0) {
-		deb_info("discontinuing polling\n");
+		dbg_info("discontinuing polling\n");
 		kfree(purb->transfer_buffer);
 		usb_free_urb(purb);
 		return;
 	}
 
 	if (purb->actual_length != RC_MSG_SIZE_V1_20) {
-		deb_info("malformed rc msg size=%d\n", purb->actual_length);
+		dbg_info("malformed rc msg size=%d\n", purb->actual_length);
 		goto resubmit;
 	}
 
-	deb_data("IR ID = %02X state = %02X System = %02X %02X Cmd = %02X %02X (len %d)\n",
+	dbg_data("IR ID = %02X state = %02X System = %02X %02X Cmd = %02X %02X (len %d)\n",
 		 poll_reply->report_id, poll_reply->data_state,
 		 poll_reply->nec.system, poll_reply->nec.not_system,
 		 poll_reply->nec.data, poll_reply->nec.not_data,
@@ -758,21 +756,21 @@ static void dib0700_rc_urb_completion(struct urb *purb)
 		}
 
 		if ((poll_reply->nec.data ^ poll_reply->nec.not_data) != 0xff) {
-			deb_data("NEC32 protocol\n");
+			dbg_data("NEC32 protocol\n");
 			keycode = RC_SCANCODE_NEC32(poll_reply->nec.system     << 24 |
 						     poll_reply->nec.not_system << 16 |
 						     poll_reply->nec.data       << 8  |
 						     poll_reply->nec.not_data);
 			protocol = RC_PROTO_NEC32;
 		} else if ((poll_reply->nec.system ^ poll_reply->nec.not_system) != 0xff) {
-			deb_data("NEC extended protocol\n");
+			dbg_data("NEC extended protocol\n");
 			keycode = RC_SCANCODE_NECX(poll_reply->nec.system << 8 |
 						    poll_reply->nec.not_system,
 						    poll_reply->nec.data);
 
 			protocol = RC_PROTO_NECX;
 		} else {
-			deb_data("NEC normal protocol\n");
+			dbg_data("NEC normal protocol\n");
 			keycode = RC_SCANCODE_NEC(poll_reply->nec.system,
 						   poll_reply->nec.data);
 			protocol = RC_PROTO_NEC;
@@ -780,7 +778,7 @@ static void dib0700_rc_urb_completion(struct urb *purb)
 
 		break;
 	default:
-		deb_data("RC5 protocol\n");
+		dbg_data("RC5 protocol\n");
 		protocol = RC_PROTO_RC5;
 		toggle = poll_reply->report_id;
 		keycode = RC_SCANCODE_RC5(poll_reply->rc5.system, poll_reply->rc5.data);
@@ -890,8 +888,8 @@ static int dib0700_probe(struct usb_interface *intf,
 			dib0700_get_version(dev, &hwversion, &romversion,
 				&fw_version, &fwtype);
 
-			deb_info("Firmware version: %x, %d, 0x%x, %d\n",
-				hwversion, romversion, fw_version, fwtype);
+			dbg_info("Firmware version: %x, %d, 0x%x, %d\n",
+				 hwversion, romversion, fw_version, fwtype);
 
 			st->fw_version = fw_version;
 			st->nb_packet_buffer_size = (u32)nb_packet_buffer_size;
diff --git a/drivers/media/usb/dvb-usb/dib0700_devices.c b/drivers/media/usb/dvb-usb/dib0700_devices.c
index 4ef3fa98d20f..4e04d146b78d 100644
--- a/drivers/media/usb/dvb-usb/dib0700_devices.c
+++ b/drivers/media/usb/dvb-usb/dib0700_devices.c
@@ -798,7 +798,7 @@ static int dib7070_tuner_reset(struct dvb_frontend *fe, int onoff)
 	struct dvb_usb_adapter *adap = fe->dvb->priv;
 	struct dib0700_adapter_state *state = adap->priv;
 
-	deb_info("reset: %d", onoff);
+	dbg_info("reset: %d", onoff);
 	return state->dib7000p_ops.set_gpio(fe, 8, 0, !onoff);
 }
 
@@ -807,7 +807,7 @@ static int dib7070_tuner_sleep(struct dvb_frontend *fe, int onoff)
 	struct dvb_usb_adapter *adap = fe->dvb->priv;
 	struct dib0700_adapter_state *state = adap->priv;
 
-	deb_info("sleep: %d", onoff);
+	dbg_info("sleep: %d", onoff);
 	return state->dib7000p_ops.set_gpio(fe, 9, 0, onoff);
 }
 
@@ -851,7 +851,7 @@ static int dib7070_set_param_override(struct dvb_frontend *fe)
 		case BAND_UHF:
 		default: offset = 550; break;
 	}
-	deb_info("WBD for DiB7000P: %d\n", offset + dib0070_wbd_offset(fe));
+	dbg_info("WBD for DiB7000P: %d\n", offset + dib0070_wbd_offset(fe));
 	state->dib7000p_ops.set_wbd_ref(fe, offset + dib0070_wbd_offset(fe));
 	return state->set_param_save(fe);
 }
@@ -875,7 +875,7 @@ static int dib7770_set_param_override(struct dvb_frontend *fe)
 		offset = 250;
 		break;
 	}
-	deb_info("WBD for DiB7000P: %d\n", offset + dib0070_wbd_offset(fe));
+	dbg_info("WBD for DiB7000P: %d\n", offset + dib0070_wbd_offset(fe));
 	state->dib7000p_ops.set_wbd_ref(fe, offset + dib0070_wbd_offset(fe));
 	return state->set_param_save(fe);
 }
@@ -1296,7 +1296,7 @@ static int dib807x_set_param_override(struct dvb_frontend *fe)
 	default:
 		offset += 250; break;
 	}
-	deb_info("WBD for DiB8000: %d\n", offset);
+	dbg_info("WBD for DiB8000: %d\n", offset);
 	state->dib8000_ops.set_wbd_ref(fe, offset);
 
 	return state->set_param_save(fe);
@@ -1543,7 +1543,7 @@ static int dib8090_get_adc_power(struct dvb_frontend *fe)
 
 static void dib8090_agc_control(struct dvb_frontend *fe, u8 restart)
 {
-	deb_info("AGC control callback: %i\n", restart);
+	dbg_info("AGC control callback: %i\n", restart);
 	dib0090_dcc_freq(fe, restart);
 
 	if (restart == 0) /* before AGC startup */
@@ -1636,13 +1636,13 @@ static u8 dib8090_compute_pll_parameters(struct dvb_frontend *fe)
 
 		if (rest > freq_adc / 2)
 			rest = freq_adc - rest;
-		deb_info("PLL ratio=%i rest=%i\n", pll_ratio, rest);
+		dbg_info("PLL ratio=%i rest=%i\n", pll_ratio, rest);
 		if ((rest > max) && (rest > 717)) {
 			optimal_pll_ratio = pll_ratio;
 			max = rest;
 		}
 	}
-	deb_info("optimal PLL ratio=%i\n", optimal_pll_ratio);
+	dbg_info("optimal PLL ratio=%i\n", optimal_pll_ratio);
 
 	return optimal_pll_ratio;
 }
@@ -1659,14 +1659,15 @@ static int dib8096_set_param_override(struct dvb_frontend *fe)
 
 	switch (band) {
 	default:
-			deb_info("Warning : Rf frequency  (%iHz) is not in the supported range, using VHF switch ", fe->dtv_property_cache.frequency);
-			/* fall through */
+		dbg_info("Warning : Rf frequency  (%iHz) is not in the supported range, using VHF switch\n",
+			 fe->dtv_property_cache.frequency);
+		fallthrough;
 	case BAND_VHF:
-			state->dib8000_ops.set_gpio(fe, 3, 0, 1);
-			break;
+		state->dib8000_ops.set_gpio(fe, 3, 0, 1);
+		break;
 	case BAND_UHF:
-			state->dib8000_ops.set_gpio(fe, 3, 0, 0);
-			break;
+		state->dib8000_ops.set_gpio(fe, 3, 0, 0);
+		break;
 	}
 
 	ret = state->set_param_save(fe);
@@ -1674,7 +1675,7 @@ static int dib8096_set_param_override(struct dvb_frontend *fe)
 		return ret;
 
 	if (fe->dtv_property_cache.bandwidth_hz != 6000000) {
-		deb_info("only 6MHz bandwidth is supported\n");
+		dbg_info("only 6MHz bandwidth is supported\n");
 		return -EINVAL;
 	}
 
@@ -1704,7 +1705,7 @@ static int dib8096_set_param_override(struct dvb_frontend *fe)
 	}
 
 	if (band == BAND_CBAND) {
-		deb_info("tuning in CBAND - soft-AGC startup\n");
+		dbg_info("tuning in CBAND - soft-AGC startup\n");
 		dib0090_set_tune_state(fe, CT_AGC_START);
 
 		do {
@@ -1720,13 +1721,13 @@ static int dib8096_set_param_override(struct dvb_frontend *fe)
 			}
 		} while (tune_state < CT_AGC_STOP);
 
-		deb_info("switching to PWM AGC\n");
+		dbg_info("switching to PWM AGC\n");
 		dib0090_pwm_gain_reset(fe);
 		state->dib8000_ops.pwm_agc_reset(fe);
 		state->dib8000_ops.set_tune_state(fe, CT_DEMOD_START);
 	} else {
 		/* for everything else than CBAND we are using standard AGC */
-		deb_info("not tuning in CBAND - standard AGC startup\n");
+		dbg_info("not tuning in CBAND - standard AGC startup\n");
 		dib0090_pwm_gain_reset(fe);
 	}
 
@@ -2057,7 +2058,7 @@ static int dib8096p_get_best_sampling(struct dvb_frontend *fe, struct dibx090p_b
 	adc->pll_loopdiv = loopdiv;
 	adc->pll_prediv = prediv;
 
-	deb_info("bandwidth = %d", fe->dtv_property_cache.bandwidth_hz);
+	dbg_info("bandwidth = %d", fe->dtv_property_cache.bandwidth_hz);
 
 	/* Find Min and Max prediv */
 	while ((xtal / max_prediv) >= fcp_min)
@@ -2070,7 +2071,7 @@ static int dib8096p_get_best_sampling(struct dvb_frontend *fe, struct dibx090p_b
 		if (min_prediv == 1)
 			break;
 	}
-	deb_info("MIN prediv = %d : MAX prediv = %d", min_prediv, max_prediv);
+	dbg_info("MIN prediv = %d : MAX prediv = %d", min_prediv, max_prediv);
 
 	min_prediv = 1;
 
@@ -2099,7 +2100,12 @@ static int dib8096p_get_best_sampling(struct dvb_frontend *fe, struct dibx090p_b
 						adc->timf = (4260880253U / fdem) * (1 << 8);
 						adc->timf += ((4260880253U % fdem) << 8) / fdem;
 
-						deb_info("RF %6d; BW %6d; Xtal %6d; Fmem %6d; Fdem %6d; Fs %6d; Prediv %2d; Loopdiv %2d; Timf %8d;", fe->dtv_property_cache.frequency, fe->dtv_property_cache.bandwidth_hz, xtal, fmem, fdem, fs, prediv, loopdiv, adc->timf);
+						dbg_info("RF %6d; BW %6d; Xtal %6d; Fmem %6d; Fdem %6d; Fs %6d; Prediv %2d; Loopdiv %2d; Timf %8d;\n",
+							 fe->dtv_property_cache.frequency,
+							 fe->dtv_property_cache.bandwidth_hz,
+							 xtal, fmem, fdem, fs,
+							 prediv, loopdiv,
+							 adc->timf);
 						break;
 					}
 				}
@@ -2240,16 +2246,16 @@ static int dib01x0_pmu_update(struct i2c_adapter *i2c, u16 *data, u8 len)
 
 	switch (rb[0] << 8 | rb[1]) {
 	case 0:
-			deb_info("Found DiB0170 rev1: This version of DiB0170 is not supported any longer.\n");
+			dbg_info("Found DiB0170 rev1: This version of DiB0170 is not supported any longer.\n");
 			return -EIO;
 	case 1:
-			deb_info("Found DiB0170 rev2");
+			dbg_info("Found DiB0170 rev2");
 			break;
 	case 2:
-			deb_info("Found DiB0190 rev2");
+			dbg_info("Found DiB0190 rev2");
 			break;
 	default:
-			deb_info("DiB01x0 not found");
+			dbg_info("DiB01x0 not found");
 			return -EIO;
 	}
 
@@ -2414,10 +2420,11 @@ static int stk9090m_frontend_attach(struct dvb_usb_adapter *adap)
 	dib9000_i2c_enumeration(&adap->dev->i2c_adap, 1, 0x10, 0x80);
 
 	if (request_firmware(&state->frontend_firmware, "dib9090.fw", &adap->dev->udev->dev)) {
-		deb_info("%s: Upload failed. (file not found?)\n", __func__);
+		dbg_info("%s: Upload failed. (file not found?)\n", __func__);
 		return -ENODEV;
 	} else {
-		deb_info("%s: firmware read %zu bytes.\n", __func__, state->frontend_firmware->size);
+		dbg_info("%s: firmware read %zu bytes\n",
+			 __func__, state->frontend_firmware->size);
 	}
 	stk9090m_config.microcode_B_fe_size = state->frontend_firmware->size;
 	stk9090m_config.microcode_B_fe_buffer = state->frontend_firmware->data;
@@ -2484,10 +2491,11 @@ static int nim9090md_frontend_attach(struct dvb_usb_adapter *adap)
 	dib0700_set_gpio(adap->dev, GPIO0, GPIO_OUT, 1);
 
 	if (request_firmware(&state->frontend_firmware, "dib9090.fw", &adap->dev->udev->dev)) {
-		deb_info("%s: Upload failed. (file not found?)\n", __func__);
+		dbg_info("%s: Upload failed. (file not found?)\n", __func__);
 		return -EIO;
 	} else {
-		deb_info("%s: firmware read %zu bytes.\n", __func__, state->frontend_firmware->size);
+		dbg_info("%s: firmware read %zu bytes\n",
+			 __func__, state->frontend_firmware->size);
 	}
 	nim9090md_config[0].microcode_B_fe_size = state->frontend_firmware->size;
 	nim9090md_config[0].microcode_B_fe_buffer = state->frontend_firmware->data;
@@ -2571,7 +2579,7 @@ static int dib7090p_get_best_sampling(struct dvb_frontend *fe , struct dibx090p_
 	adc->pll_prediv = prediv;
 	adc->timf = 0;
 
-	deb_info("bandwidth = %d fdem_min =%d", fe->dtv_property_cache.bandwidth_hz, fdem_min);
+	dbg_info("bandwidth = %d fdem_min =%d", fe->dtv_property_cache.bandwidth_hz, fdem_min);
 
 	/* Find Min and Max prediv */
 	while ((xtal/max_prediv) >= fcp_min)
@@ -2584,7 +2592,7 @@ static int dib7090p_get_best_sampling(struct dvb_frontend *fe , struct dibx090p_
 		if (min_prediv == 1)
 			break;
 	}
-	deb_info("MIN prediv = %d : MAX prediv = %d", min_prediv, max_prediv);
+	dbg_info("MIN prediv = %d : MAX prediv = %d", min_prediv, max_prediv);
 
 	min_prediv = 2;
 
@@ -2611,7 +2619,9 @@ static int dib7090p_get_best_sampling(struct dvb_frontend *fe , struct dibx090p_
 						adc->pll_prediv = prediv;
 						adc->timf = 2396745143UL/fdem*(1 << 9);
 						adc->timf += ((2396745143UL%fdem) << 9)/fdem;
-						deb_info("loopdiv=%i prediv=%i timf=%i", loopdiv, prediv, adc->timf);
+						dbg_info("loopdiv=%i prediv=%i timf=%i\n",
+							 loopdiv, prediv,
+							 adc->timf);
 						break;
 					}
 				}
@@ -2658,7 +2668,7 @@ static int dib7090_agc_startup(struct dvb_frontend *fe)
 
 static int dib7090_agc_restart(struct dvb_frontend *fe, u8 restart)
 {
-	deb_info("AGC restart callback: %d", restart);
+	dbg_info("AGC restart callback: %d", restart);
 	if (restart == 0) /* before AGC startup */
 		dib0090_set_dc_servo(fe, 1);
 	return 0;
@@ -2669,7 +2679,7 @@ static int tfe7790p_update_lna(struct dvb_frontend *fe, u16 agc_global)
 	struct dvb_usb_adapter *adap = fe->dvb->priv;
 	struct dib0700_adapter_state *state = adap->priv;
 
-	deb_info("update LNA: agc global=%i", agc_global);
+	dbg_info("update LNA: agc global=%i", agc_global);
 
 	if (agc_global < 25000) {
 		state->dib7000p_ops.set_gpio(fe, 8, 0, 0);
@@ -2824,7 +2834,7 @@ static int tfe7090p_pvr_update_lna(struct dvb_frontend *fe, u16 agc_global)
 	struct dvb_usb_adapter *adap = fe->dvb->priv;
 	struct dib0700_adapter_state *state = adap->priv;
 
-	deb_info("TFE7090P-PVR update LNA: agc global=%i", agc_global);
+	dbg_info("TFE7090P-PVR update LNA: agc global=%i", agc_global);
 	if (agc_global < 25000) {
 		state->dib7000p_ops.set_gpio(fe, 5, 0, 0);
 		state->dib7000p_ops.set_agc1_min(fe, 0);
diff --git a/drivers/media/usb/dvb-usb/dibusb-common.c b/drivers/media/usb/dvb-usb/dibusb-common.c
index 02b51d1a1b67..fdc0df47678c 100644
--- a/drivers/media/usb/dvb-usb/dibusb-common.c
+++ b/drivers/media/usb/dvb-usb/dibusb-common.c
@@ -16,7 +16,7 @@ module_param(debug, int, 0644);
 MODULE_PARM_DESC(debug, "set debugging level (1=info (|-able))." DVB_USB_DEBUG_STATUS);
 MODULE_LICENSE("GPL");
 
-#define deb_info(args...) dprintk(debug,0x01,args)
+#define dbg_info(fmt, ...)	dprintk(debug, 0x01, fmt, ##__VA_ARGS__)
 
 /* common stuff used by the different dibusb modules */
 int dibusb_streaming_ctrl(struct dvb_usb_adapter *adap, int onoff)
@@ -389,7 +389,7 @@ int dibusb_rc_query(struct dvb_usb_device *d, u32 *event, int *state)
 	dvb_usb_nec_rc_key_to_event(d, buf, event, state);
 
 	if (buf[0] != 0)
-		deb_info("key: %*ph\n", 5, buf);
+		dbg_info("key: %*ph\n", 5, buf);
 
 ret:
 	kfree(buf);
diff --git a/drivers/media/usb/dvb-usb/digitv.c b/drivers/media/usb/dvb-usb/digitv.c
index 4e3b3c064bcf..3b07928b2996 100644
--- a/drivers/media/usb/dvb-usb/digitv.c
+++ b/drivers/media/usb/dvb-usb/digitv.c
@@ -20,7 +20,8 @@ MODULE_PARM_DESC(debug, "set debugging level (1=rc (or-able))." DVB_USB_DEBUG_ST
 
 DVB_DEFINE_MOD_OPT_ADAPTER_NR(adapter_nr);
 
-#define deb_rc(args...)   dprintk(dvb_usb_digitv_debug,0x01,args)
+#define dbg_rc(fmt, ...)						\
+	dprintk(dvb_usb_digitv_debug, 0x01, fmt, ##__VA_ARGS__)
 
 static int digitv_ctrl_msg(struct dvb_usb_device *d,
 		u8 cmd, u8 vv, u8 *wbuf, int wlen, u8 *rbuf, int rlen)
@@ -262,7 +263,7 @@ static int digitv_rc_query(struct dvb_usb_device *d, u32 *event, int *state)
 			}
 		}
 
-		deb_rc("key: %*ph\n", 4, key);
+		dbg_rc("key: %*ph\n", 4, key);
 	}
 
 	return 0;
diff --git a/drivers/media/usb/dvb-usb/dtt200u-fe.c b/drivers/media/usb/dvb-usb/dtt200u-fe.c
index 9f83560ba63d..2c2e842dc187 100644
--- a/drivers/media/usb/dvb-usb/dtt200u-fe.c
+++ b/drivers/media/usb/dvb-usb/dtt200u-fe.c
@@ -210,7 +210,7 @@ struct dvb_frontend* dtt200u_fe_attach(struct dvb_usb_device *d)
 	if (state == NULL)
 		goto error;
 
-	deb_info("attaching frontend dtt200u\n");
+	dbg_info("attaching frontend dtt200u\n");
 
 	state->d = d;
 	mutex_init(&state->data_mutex);
diff --git a/drivers/media/usb/dvb-usb/dtt200u.c b/drivers/media/usb/dvb-usb/dtt200u.c
index 24efa023d827..465f05c38891 100644
--- a/drivers/media/usb/dvb-usb/dtt200u.c
+++ b/drivers/media/usb/dvb-usb/dtt200u.c
@@ -121,7 +121,7 @@ static int dtt200u_rc_query(struct dvb_usb_device *d)
 	}
 
 	if (st->data[0] != 0)
-		deb_info("st->data: %*ph\n", 5, st->data);
+		dbg_info("st->data: %*ph\n", 5, st->data);
 
 ret:
 	mutex_unlock(&d->data_mutex);
diff --git a/drivers/media/usb/dvb-usb/dtt200u.h b/drivers/media/usb/dvb-usb/dtt200u.h
index 696c2c1f3af3..22dca506216d 100644
--- a/drivers/media/usb/dvb-usb/dtt200u.h
+++ b/drivers/media/usb/dvb-usb/dtt200u.h
@@ -14,8 +14,10 @@
 #include "dvb-usb.h"
 
 extern int dvb_usb_dtt200u_debug;
-#define deb_info(args...) dprintk(dvb_usb_dtt200u_debug,0x01,args)
-#define deb_xfer(args...) dprintk(dvb_usb_dtt200u_debug,0x02,args)
+#define dbg_info(fmt, ...)						\
+	dprintk(dvb_usb_dtt200u_debug, 0x01, fmt, ##__VA_ARGS__)
+#define dbg_xfer(fmt, ...)						\
+	dprintk(dvb_usb_dtt200u_debug, 0x02, fmt, ##__VA_ARGS__)
 
 /* guessed protocol description (reverse engineered):
  * read
diff --git a/drivers/media/usb/dvb-usb/dvb-usb-common.h b/drivers/media/usb/dvb-usb/dvb-usb-common.h
index 70f4eedd7c48..c5a4abc01f73 100644
--- a/drivers/media/usb/dvb-usb/dvb-usb-common.h
+++ b/drivers/media/usb/dvb-usb/dvb-usb-common.h
@@ -15,15 +15,24 @@
 extern int dvb_usb_debug;
 extern int dvb_usb_disable_rc_polling;
 
-#define deb_info(args...)  dprintk(dvb_usb_debug,0x001,args)
-#define deb_xfer(args...)  dprintk(dvb_usb_debug,0x002,args)
-#define deb_pll(args...)   dprintk(dvb_usb_debug,0x004,args)
-#define deb_ts(args...)    dprintk(dvb_usb_debug,0x008,args)
-#define deb_err(args...)   dprintk(dvb_usb_debug,0x010,args)
-#define deb_rc(args...)    dprintk(dvb_usb_debug,0x020,args)
-#define deb_fw(args...)    dprintk(dvb_usb_debug,0x040,args)
-#define deb_mem(args...)   dprintk(dvb_usb_debug,0x080,args)
-#define deb_uxfer(args...) dprintk(dvb_usb_debug,0x100,args)
+#define dbg_info(fmt, ...)						\
+	dprintk(dvb_usb_debug, 0x001, fmt, ##__VA_ARGS__)
+#define dbg_xfer(fmt, ...)						\
+	dprintk(dvb_usb_debug, 0x002, fmt, ##__VA_ARGS__)
+#define dbg_pll(fmt, ...)						\
+	dprintk(dvb_usb_debug, 0x004, fmt, ##__VA_ARGS__)
+#define dbg_ts(fmt, ...)						\
+	dprintk(dvb_usb_debug, 0x008, fmt, ##__VA_ARGS__)
+#define dbg_err(fmt, ...)						\
+	dprintk(dvb_usb_debug, 0x010, fmt, ##__VA_ARGS__)
+#define dbg_rc(fmt, ...)						\
+	dprintk(dvb_usb_debug, 0x020, fmt, ##__VA_ARGS__)
+#define dbg_fw(fmt, ...)						\
+	dprintk(dvb_usb_debug, 0x040, fmt, ##__VA_ARGS__)
+#define dbg_mem(fmt, ...)						\
+	dprintk(dvb_usb_debug, 0x080, fmt, ##__VA_ARGS__)
+#define dbg_uxfer(fmt, ...)						\
+	dprintk(dvb_usb_debug, 0x100, fmt, ##__VA_ARGS__)
 
 /* commonly used  methods */
 int dvb_usb_download_firmware(struct usb_device *udev,
diff --git a/drivers/media/usb/dvb-usb/dvb-usb-dvb.c b/drivers/media/usb/dvb-usb/dvb-usb-dvb.c
index 0a7f8ba90992..fa9f80938813 100644
--- a/drivers/media/usb/dvb-usb/dvb-usb-dvb.c
+++ b/drivers/media/usb/dvb-usb/dvb-usb-dvb.c
@@ -28,7 +28,7 @@ static int dvb_usb_ctrl_feed(struct dvb_demux_feed *dvbdmxfeed, int onoff)
 
 	/* stop feed before setting a new pid if there will be no pid anymore */
 	if (newfeedcount == 0) {
-		deb_ts("stop feeding\n");
+		dbg_ts("stop feeding\n");
 		usb_urb_kill(&adap->fe_adap[adap->active_fe].stream);
 
 		if (adap->props.fe[adap->active_fe].streaming_ctrl != NULL) {
@@ -43,10 +43,10 @@ static int dvb_usb_ctrl_feed(struct dvb_demux_feed *dvbdmxfeed, int onoff)
 	adap->feedcount = newfeedcount;
 
 	/* activate the pid on the device specific pid_filter */
-	deb_ts("setting pid (%s): %5d %04x at index %d '%s'\n",
-		adap->fe_adap[adap->active_fe].pid_filtering ?
-		"yes" : "no", dvbdmxfeed->pid, dvbdmxfeed->pid,
-		dvbdmxfeed->index, onoff ? "on" : "off");
+	dbg_ts("setting pid (%s): %5d %04x at index %d '%s'\n",
+	       adap->fe_adap[adap->active_fe].pid_filtering ? "yes" : "no",
+	       dvbdmxfeed->pid, dvbdmxfeed->pid, dvbdmxfeed->index,
+	       onoff ? "on" : "off");
 	if (adap->props.fe[adap->active_fe].caps & DVB_USB_ADAP_HAS_PID_FILTER &&
 		adap->fe_adap[adap->active_fe].pid_filtering &&
 		adap->props.fe[adap->active_fe].pid_filter != NULL)
@@ -56,7 +56,7 @@ static int dvb_usb_ctrl_feed(struct dvb_demux_feed *dvbdmxfeed, int onoff)
 	 * for reception.
 	 */
 	if (adap->feedcount == onoff && adap->feedcount > 0) {
-		deb_ts("controlling pid parser\n");
+		dbg_ts("controlling pid parser\n");
 		if (adap->props.fe[adap->active_fe].caps & DVB_USB_ADAP_HAS_PID_FILTER &&
 			adap->props.fe[adap->active_fe].caps &
 			DVB_USB_ADAP_PID_FILTER_CAN_BE_TURNED_OFF &&
@@ -68,7 +68,7 @@ static int dvb_usb_ctrl_feed(struct dvb_demux_feed *dvbdmxfeed, int onoff)
 				return ret;
 			}
 		}
-		deb_ts("start feeding\n");
+		dbg_ts("start feeding\n");
 		if (adap->props.fe[adap->active_fe].streaming_ctrl != NULL) {
 			ret = adap->props.fe[adap->active_fe].streaming_ctrl(adap, 1);
 			if (ret < 0) {
@@ -77,7 +77,7 @@ static int dvb_usb_ctrl_feed(struct dvb_demux_feed *dvbdmxfeed, int onoff)
 			}
 		}
 
-		deb_ts("submitting all URBs\n");
+		dbg_ts("submitting all URBs\n");
 		usb_urb_submit(&adap->fe_adap[adap->active_fe].stream);
 	}
 	return 0;
@@ -85,14 +85,14 @@ static int dvb_usb_ctrl_feed(struct dvb_demux_feed *dvbdmxfeed, int onoff)
 
 static int dvb_usb_start_feed(struct dvb_demux_feed *dvbdmxfeed)
 {
-	deb_ts("start pid: 0x%04x, feedtype: %d\n", dvbdmxfeed->pid,
+	dbg_ts("start pid: 0x%04x, feedtype: %d\n", dvbdmxfeed->pid,
 	       dvbdmxfeed->type);
 	return dvb_usb_ctrl_feed(dvbdmxfeed, 1);
 }
 
 static int dvb_usb_stop_feed(struct dvb_demux_feed *dvbdmxfeed)
 {
-	deb_ts("stop pid: 0x%04x, feedtype: %d\n", dvbdmxfeed->pid, dvbdmxfeed->type);
+	dbg_ts("stop pid: 0x%04x, feedtype: %d\n", dvbdmxfeed->pid, dvbdmxfeed->type);
 	return dvb_usb_ctrl_feed(dvbdmxfeed, 0);
 }
 
@@ -150,14 +150,14 @@ int dvb_usb_adapter_dvb_init(struct dvb_usb_adapter *adap, short *adapter_nums)
 				       adapter_nums);
 
 	if (ret < 0) {
-		deb_info("dvb_register_adapter failed: error %d", ret);
+		dbg_info("dvb_register_adapter failed: error %d", ret);
 		goto err;
 	}
 	adap->dvb_adap.priv = adap;
 
 	ret = dvb_usb_media_device_init(adap);
 	if (ret < 0) {
-		deb_info("dvb_usb_media_device_init failed: error %d", ret);
+		dbg_info("dvb_usb_media_device_init failed: error %d", ret);
 		goto err_mc;
 	}
 
@@ -218,7 +218,7 @@ int dvb_usb_adapter_dvb_init(struct dvb_usb_adapter *adap, short *adapter_nums)
 int dvb_usb_adapter_dvb_exit(struct dvb_usb_adapter *adap)
 {
 	if (adap->state & DVB_USB_ADAP_STATE_DVB) {
-		deb_info("unregistering DVB part\n");
+		dbg_info("unregistering DVB part\n");
 		dvb_net_release(&adap->dvb_net);
 		adap->demux.dmx.close(&adap->demux.dmx);
 		dvb_dmxdev_release(&adap->dmxdev);
diff --git a/drivers/media/usb/dvb-usb/dvb-usb-firmware.c b/drivers/media/usb/dvb-usb/dvb-usb-firmware.c
index 0fb3fa6100e4..0c9748ab1853 100644
--- a/drivers/media/usb/dvb-usb/dvb-usb-firmware.c
+++ b/drivers/media/usb/dvb-usb/dvb-usb-firmware.c
@@ -52,7 +52,8 @@ int usb_cypress_load_firmware(struct usb_device *udev, const struct firmware *fw
 		err("could not stop the USB controller CPU.");
 
 	while ((ret = dvb_usb_get_hexline(fw, hx, &pos)) > 0) {
-		deb_fw("writing to address 0x%04x (buffer: 0x%02x %02x)\n", hx->addr, hx->len, hx->chk);
+		dbg_fw("writing to address 0x%04x (buffer: 0x%02x %02x)\n",
+		       hx->addr, hx->len, hx->chk);
 		ret = usb_cypress_writemem(udev, hx->addr, hx->data, hx->len);
 
 		if (ret != hx->len) {
diff --git a/drivers/media/usb/dvb-usb/dvb-usb-init.c b/drivers/media/usb/dvb-usb/dvb-usb-init.c
index c1a7634e27b4..52374ed73b57 100644
--- a/drivers/media/usb/dvb-usb/dvb-usb-init.c
+++ b/drivers/media/usb/dvb-usb/dvb-usb-init.c
@@ -124,11 +124,11 @@ static int dvb_usb_adapter_exit(struct dvb_usb_device *d)
 /* general initialization functions */
 static int dvb_usb_exit(struct dvb_usb_device *d)
 {
-	deb_info("state before exiting everything: %x\n", d->state);
+	dbg_info("state before exiting everything: %x\n", d->state);
 	dvb_usb_remote_exit(d);
 	dvb_usb_adapter_exit(d);
 	dvb_usb_i2c_exit(d);
-	deb_info("state should be zero now: %x\n", d->state);
+	dbg_info("state should be zero now: %x\n", d->state);
 	d->state = DVB_USB_STATE_INIT;
 
 	if (d->priv != NULL && d->props.priv_destroy != NULL)
@@ -194,7 +194,9 @@ static const struct dvb_usb_device_description *dvb_usb_find_device(struct usb_d
 	for (i = 0; i < props->num_device_descs; i++) {
 
 		for (j = 0; j < DVB_USB_ID_MAX_NUM && props->devices[i].cold_ids[j] != NULL; j++) {
-			deb_info("check for cold %x %x\n", props->devices[i].cold_ids[j]->idVendor, props->devices[i].cold_ids[j]->idProduct);
+			dbg_info("check for cold %x %x\n",
+				 props->devices[i].cold_ids[j]->idVendor,
+				 props->devices[i].cold_ids[j]->idProduct);
 			if (props->devices[i].cold_ids[j]->idVendor  == le16_to_cpu(udev->descriptor.idVendor) &&
 				props->devices[i].cold_ids[j]->idProduct == le16_to_cpu(udev->descriptor.idProduct)) {
 				*cold = 1;
@@ -207,7 +209,9 @@ static const struct dvb_usb_device_description *dvb_usb_find_device(struct usb_d
 			break;
 
 		for (j = 0; j < DVB_USB_ID_MAX_NUM && props->devices[i].warm_ids[j] != NULL; j++) {
-			deb_info("check for warm %x %x\n", props->devices[i].warm_ids[j]->idVendor, props->devices[i].warm_ids[j]->idProduct);
+			dbg_info("check for warm %x %x\n",
+				 props->devices[i].warm_ids[j]->idVendor,
+				 props->devices[i].warm_ids[j]->idProduct);
 			if (props->devices[i].warm_ids[j]->idVendor == le16_to_cpu(udev->descriptor.idVendor) &&
 				props->devices[i].warm_ids[j]->idProduct == le16_to_cpu(udev->descriptor.idProduct)) {
 				*cold = 0;
@@ -231,7 +235,7 @@ int dvb_usb_device_power_ctrl(struct dvb_usb_device *d, int onoff)
 		d->powered--;
 
 	if (d->powered == 0 || (onoff && d->powered == 1)) { /* when switching from 1 to 0 or from 0 to 1 */
-		deb_info("power control: %d\n", onoff);
+		dbg_info("power control: %d\n", onoff);
 		if (d->props.power_ctrl)
 			return d->props.power_ctrl(d, onoff);
 	}
@@ -256,7 +260,7 @@ int dvb_usb_device_init(struct usb_interface *intf,
 		*du = NULL;
 
 	if ((desc = dvb_usb_find_device(udev, props, &cold)) == NULL) {
-		deb_err("something went very wrong, device was not found in current device list - let's see what comes next.\n");
+		dbg_err("something went very wrong, device was not found in current device list - let's see what comes next.\n");
 		return -ENODEV;
 	}
 
diff --git a/drivers/media/usb/dvb-usb/dvb-usb-remote.c b/drivers/media/usb/dvb-usb/dvb-usb-remote.c
index 65e2c9e2cdc9..dcc6cafb69e7 100644
--- a/drivers/media/usb/dvb-usb/dvb-usb-remote.c
+++ b/drivers/media/usb/dvb-usb/dvb-usb-remote.c
@@ -130,7 +130,7 @@ static void legacy_dvb_usb_read_remote_control(struct work_struct *work)
 		case REMOTE_NO_KEY_PRESSED:
 			break;
 		case REMOTE_KEY_PRESSED:
-			deb_rc("key pressed\n");
+			dbg_rc("key pressed\n");
 			d->last_event = event;
 			input_event(d->input_dev, EV_KEY, event, 1);
 			input_sync(d->input_dev);
@@ -138,7 +138,7 @@ static void legacy_dvb_usb_read_remote_control(struct work_struct *work)
 			input_sync(d->input_dev);
 			break;
 		case REMOTE_KEY_REPEAT:
-			deb_rc("key repeated\n");
+			dbg_rc("key repeated\n");
 			input_event(d->input_dev, EV_KEY, event, 1);
 			input_sync(d->input_dev);
 			input_event(d->input_dev, EV_KEY, d->last_event, 0);
@@ -151,9 +151,9 @@ static void legacy_dvb_usb_read_remote_control(struct work_struct *work)
 /* improved repeat handling ???
 	switch (state) {
 		case REMOTE_NO_KEY_PRESSED:
-			deb_rc("NO KEY PRESSED\n");
+			dbg_rc("NO KEY PRESSED\n");
 			if (d->last_state != REMOTE_NO_KEY_PRESSED) {
-				deb_rc("releasing event %d\n",d->last_event);
+				dbg_rc("releasing event %d\n", d->last_event);
 				input_event(d->rc_input_dev, EV_KEY, d->last_event, 0);
 				input_sync(d->rc_input_dev);
 			}
@@ -161,8 +161,8 @@ static void legacy_dvb_usb_read_remote_control(struct work_struct *work)
 			d->last_event = 0;
 			break;
 		case REMOTE_KEY_PRESSED:
-			deb_rc("KEY PRESSED\n");
-			deb_rc("pressing event %d\n",event);
+			dbg_rc("KEY PRESSED\n");
+			dbg_rc("pressing event %d\n", event);
 
 			input_event(d->rc_input_dev, EV_KEY, event, 1);
 			input_sync(d->rc_input_dev);
@@ -171,9 +171,9 @@ static void legacy_dvb_usb_read_remote_control(struct work_struct *work)
 			d->last_state = REMOTE_KEY_PRESSED;
 			break;
 		case REMOTE_KEY_REPEAT:
-			deb_rc("KEY_REPEAT\n");
+			dbg_rc("KEY_REPEAT\n");
 			if (d->last_state != REMOTE_NO_KEY_PRESSED) {
-				deb_rc("repeating event %d\n",d->last_event);
+				dbg_rc("repeating event %d\n", d->last_event);
 				input_event(d->rc_input_dev, EV_KEY, d->last_event, 2);
 				input_sync(d->rc_input_dev);
 				d->last_state = REMOTE_KEY_REPEAT;
@@ -208,10 +208,10 @@ static int legacy_dvb_usb_remote_init(struct dvb_usb_device *d)
 	input_dev->setkeycode = legacy_dvb_usb_setkeycode;
 
 	/* set the bits for the keys */
-	deb_rc("key map size: %d\n", d->props.rc.legacy.rc_map_size);
+	dbg_rc("key map size: %d\n", d->props.rc.legacy.rc_map_size);
 	for (i = 0; i < d->props.rc.legacy.rc_map_size; i++) {
-		deb_rc("setting bit for event %d item %d\n",
-			d->props.rc.legacy.rc_map_table[i].keycode, i);
+		dbg_rc("setting bit for event %d item %d\n",
+		       d->props.rc.legacy.rc_map_table[i].keycode, i);
 		set_bit(d->props.rc.legacy.rc_map_table[i].keycode, input_dev->keybit);
 	}
 
@@ -372,7 +372,7 @@ int dvb_usb_nec_rc_key_to_event(struct dvb_usb_device *d,
 		case DVB_USB_RC_NEC_KEY_PRESSED:
 			if ((u8) ~keybuf[1] != keybuf[2] ||
 				(u8) ~keybuf[3] != keybuf[4]) {
-				deb_err("remote control checksum failed.\n");
+				dbg_err("remote control checksum failed.\n");
 				break;
 			}
 			/* See if we can match the raw key code. */
@@ -383,13 +383,14 @@ int dvb_usb_nec_rc_key_to_event(struct dvb_usb_device *d,
 					*state = REMOTE_KEY_PRESSED;
 					return 0;
 				}
-			deb_err("key mapping failed - no appropriate key found in keymapping\n");
+			dbg_err("key mapping failed - no appropriate key found in keymapping\n");
 			break;
 		case DVB_USB_RC_NEC_KEY_REPEATED:
 			*state = REMOTE_KEY_REPEAT;
 			break;
 		default:
-			deb_err("unknown type of remote status: %d\n",keybuf[0]);
+			dbg_err("unknown type of remote status: %d\n",
+				keybuf[0]);
 			break;
 	}
 	return 0;
diff --git a/drivers/media/usb/dvb-usb/dvb-usb-urb.c b/drivers/media/usb/dvb-usb/dvb-usb-urb.c
index 2aabf90d8697..a7b405906627 100644
--- a/drivers/media/usb/dvb-usb/dvb-usb-urb.c
+++ b/drivers/media/usb/dvb-usb/dvb-usb-urb.c
@@ -25,8 +25,7 @@ int dvb_usb_generic_rw(struct dvb_usb_device *d, u8 *wbuf, u16 wlen, u8 *rbuf,
 	if ((ret = mutex_lock_interruptible(&d->usb_mutex)))
 		return ret;
 
-	deb_xfer(">>> ");
-	debug_dump(wbuf,wlen,deb_xfer);
+	dbg_xfer(">>> %*ph\n", (int)wlen, wbuf);
 
 	ret = usb_bulk_msg(d->udev,usb_sndbulkpipe(d->udev,
 			d->props.generic_bulk_ctrl_endpoint), wbuf,wlen,&actlen,
@@ -51,8 +50,7 @@ int dvb_usb_generic_rw(struct dvb_usb_device *d, u8 *wbuf, u16 wlen, u8 *rbuf,
 		if (ret)
 			err("recv bulk message failed: %d",ret);
 		else {
-			deb_xfer("<<< ");
-			debug_dump(rbuf,actlen,deb_xfer);
+			dbg_xfer("<<< %*ph\n", actlen, rbuf);
 		}
 	}
 
diff --git a/drivers/media/usb/dvb-usb/dvb-usb.h b/drivers/media/usb/dvb-usb/dvb-usb.h
index 741be0e69447..51b6a2e339a1 100644
--- a/drivers/media/usb/dvb-usb/dvb-usb.h
+++ b/drivers/media/usb/dvb-usb/dvb-usb.h
@@ -28,19 +28,17 @@
 
 /* debug */
 #ifdef CONFIG_DVB_USB_DEBUG
-#define dprintk(var,level,args...) \
-	    do { if ((var & level)) { printk(args); } } while (0)
 
-#define debug_dump(b,l,func) {\
-	int loop_; \
-	for (loop_ = 0; loop_ < l; loop_++) func("%02x ", b[loop_]); \
-	func("\n");\
-}
+#define dprintk(var, level, fmt, ...)					\
+do {									\
+	if (var & (level))						\
+		printk(KERN_DEBUG fmt, ##__VA_ARGS__);			\
+} while (0)
 #define DVB_USB_DEBUG_STATUS
+
 #else
-#define dprintk(args...)
-#define debug_dump(b,l,func)
 
+#define dprintk(fmt, ...)	no_printk(KERN_DEBUG fmt, ##__VA_ARGS__)
 #define DVB_USB_DEBUG_STATUS " (debugging is not enabled)"
 
 #endif
diff --git a/drivers/media/usb/dvb-usb/dw2102.c b/drivers/media/usb/dvb-usb/dw2102.c
index f96626fe2c0b..a31e401f17fd 100644
--- a/drivers/media/usb/dvb-usb/dw2102.c
+++ b/drivers/media/usb/dvb-usb/dw2102.c
@@ -542,9 +542,10 @@ static int dw3101_i2c_transfer(struct i2c_adapter *adap, struct i2c_msg msg[],
 	}
 
 	for (i = 0; i < num; i++) {
-		deb_xfer("%02x:%02x: %s ", i, msg[i].addr,
-				msg[i].flags == 0 ? ">>>" : "<<<");
-		debug_dump(msg[i].buf, msg[i].len, deb_xfer);
+		dbg_xfer("%02x:%02x: %s %*ph\n",
+			 i, msg[i].addr,
+			 msg[i].flags == 0 ? ">>>" : "<<<",
+			 (int)msg[i].len, msg[i].buf);
 	}
 	ret = num;
 
@@ -835,10 +836,8 @@ static int dw210x_read_mac_address(struct dvb_usb_device *d, u8 mac[6])
 			eepromline[i%16] = ibuf[0];
 			eeprom[i] = ibuf[0];
 		}
-		if ((i % 16) == 15) {
-			deb_xfer("%02x: ", i - 15);
-			debug_dump(eepromline, 16, deb_xfer);
-		}
+		if ((i % 16) == 15)
+			dbg_xfer("%02x: %*ph\n", i - 15, 16, eepromline);
 	}
 
 	memcpy(mac, eeprom + 8, 6);
@@ -875,10 +874,8 @@ static int s6x0_read_mac_address(struct dvb_usb_device *d, u8 mac[6])
 			eeprom[i] = ibuf[0];
 		}
 
-		if ((i % 16) == 15) {
-			deb_xfer("%02x: ", i - 15);
-			debug_dump(eepromline, 16, deb_xfer);
-		}
+		if ((i % 16) == 15)
+			dbg_xfer("%02x: %*ph", i - 15, 16, eepromline);
 	}
 
 	memcpy(mac, eeprom + 16, 6);
@@ -1705,8 +1702,8 @@ static int dw2102_rc_query(struct dvb_usb_device *d)
 
 	if (d->props.i2c_algo->master_xfer(&d->i2c_adap, &msg, 1) == 1) {
 		if (msg.buf[0] != 0xff) {
-			deb_rc("%s: rc code: %x, %x\n",
-					__func__, key[0], key[1]);
+			dbg_rc("%s: rc code: %x, %x\n",
+			       __func__, key[0], key[1]);
 			rc_keydown(d->rc_dev, RC_PROTO_UNKNOWN, key[0], 0);
 		}
 	}
@@ -1726,8 +1723,8 @@ static int prof_rc_query(struct dvb_usb_device *d)
 
 	if (d->props.i2c_algo->master_xfer(&d->i2c_adap, &msg, 1) == 1) {
 		if (msg.buf[0] != 0xff) {
-			deb_rc("%s: rc code: %x, %x\n",
-					__func__, key[0], key[1]);
+			dbg_rc("%s: rc code: %x, %x\n",
+			       __func__, key[0], key[1]);
 			rc_keydown(d->rc_dev, RC_PROTO_UNKNOWN, key[0] ^ 0xff,
 				   0);
 		}
@@ -1748,8 +1745,8 @@ static int su3000_rc_query(struct dvb_usb_device *d)
 
 	if (d->props.i2c_algo->master_xfer(&d->i2c_adap, &msg, 1) == 1) {
 		if (msg.buf[0] != 0xff) {
-			deb_rc("%s: rc code: %x, %x\n",
-					__func__, key[0], key[1]);
+			dbg_rc("%s: rc code: %x, %x\n",
+			       __func__, key[0], key[1]);
 			rc_keydown(d->rc_dev, RC_PROTO_RC5,
 				   RC_SCANCODE_RC5(key[1], key[0]), 0);
 		}
diff --git a/drivers/media/usb/dvb-usb/dw2102.h b/drivers/media/usb/dvb-usb/dw2102.h
index f64cf79b7934..ff728355a785 100644
--- a/drivers/media/usb/dvb-usb/dw2102.h
+++ b/drivers/media/usb/dvb-usb/dw2102.h
@@ -5,6 +5,6 @@
 #define DVB_USB_LOG_PREFIX "dw2102"
 #include "dvb-usb.h"
 
-#define deb_xfer(args...) dprintk(dvb_usb_dw2102_debug, 0x02, args)
-#define deb_rc(args...)   dprintk(dvb_usb_dw2102_debug, 0x04, args)
+#define dbg_xfer(args...) dprintk(dvb_usb_dw2102_debug, 0x02, args)
+#define dbg_rc(args...)   dprintk(dvb_usb_dw2102_debug, 0x04, args)
 #endif
diff --git a/drivers/media/usb/dvb-usb/gp8psk.c b/drivers/media/usb/dvb-usb/gp8psk.c
index c07f46f5176e..946d63beff13 100644
--- a/drivers/media/usb/dvb-usb/gp8psk.c
+++ b/drivers/media/usb/dvb-usb/gp8psk.c
@@ -45,7 +45,7 @@ static int gp8psk_usb_in_op(struct dvb_usb_device *d, u8 req, u16 value,
 			USB_TYPE_VENDOR | USB_DIR_IN,
 			value, index, st->data, blen,
 			2000);
-		deb_info("reading number %d (ret: %d)\n",try,ret);
+		dbg_info("reading number %d (ret: %d)\n", try, ret);
 		try++;
 	}
 
@@ -57,8 +57,8 @@ static int gp8psk_usb_in_op(struct dvb_usb_device *d, u8 req, u16 value,
 		memcpy(b, st->data, blen);
 	}
 
-	deb_xfer("in: req. %x, val: %x, ind: %x, buffer: ",req,value,index);
-	debug_dump(b,blen,deb_xfer);
+	dbg_xfer("in: req. %x, val: %x, ind: %x, buffer: %*ph\n",
+		 req, value, index, blen, b);
 
 	mutex_unlock(&d->usb_mutex);
 
@@ -71,8 +71,8 @@ static int gp8psk_usb_out_op(struct dvb_usb_device *d, u8 req, u16 value,
 	struct gp8psk_state *st = d->priv;
 	int ret;
 
-	deb_xfer("out: req. %x, val: %x, ind: %x, buffer: ",req,value,index);
-	debug_dump(b,blen,deb_xfer);
+	dbg_xfer("out: req. %x, val: %x, ind: %x, buffer: %*ph\n",
+		 req, value, index, blen, b);
 
 	if (blen > sizeof(st->data))
 		return -EIO;
@@ -230,7 +230,7 @@ static int gp8psk_bcm4500_reload(struct dvb_usb_device *d)
 	u8 buf;
 	int gp_product_id = le16_to_cpu(d->udev->descriptor.idProduct);
 
-	deb_xfer("reloading firmware\n");
+	dbg_xfer("reloading firmware\n");
 
 	/* Turn off 8psk power */
 	if (gp8psk_usb_in_op(d, BOOT_8PSK, 0, 0, &buf, 1))
diff --git a/drivers/media/usb/dvb-usb/gp8psk.h b/drivers/media/usb/dvb-usb/gp8psk.h
index 5293dfdd2609..c44895ce3b3a 100644
--- a/drivers/media/usb/dvb-usb/gp8psk.h
+++ b/drivers/media/usb/dvb-usb/gp8psk.h
@@ -18,9 +18,12 @@
 #include "dvb-usb.h"
 
 extern int dvb_usb_gp8psk_debug;
-#define deb_info(args...) dprintk(dvb_usb_gp8psk_debug,0x01,args)
-#define deb_xfer(args...) dprintk(dvb_usb_gp8psk_debug,0x02,args)
-#define deb_rc(args...)   dprintk(dvb_usb_gp8psk_debug,0x04,args)
+#define dbg_info(fmt, ...)						\
+	dprintk(dvb_usb_gp8psk_debug, 0x01, fmt, ##__VA_ARGS__)
+#define dbg_xfer(fmt, ...)						\
+	dprintk(dvb_usb_gp8psk_debug, 0x02, fmt, ##__VA_ARGS__)
+#define dbg_rc(fmt, ...)						\
+	dprintk(dvb_usb_gp8psk_debug, 0x04, fmt, ##__VA_ARGS__)
 
 #define GET_USB_SPEED                     0x07
 
diff --git a/drivers/media/usb/dvb-usb/nova-t-usb2.c b/drivers/media/usb/dvb-usb/nova-t-usb2.c
index e7b290552b66..71df4c357ef2 100644
--- a/drivers/media/usb/dvb-usb/nova-t-usb2.c
+++ b/drivers/media/usb/dvb-usb/nova-t-usb2.c
@@ -14,8 +14,8 @@ MODULE_PARM_DESC(debug, "set debugging level (1=rc,2=eeprom (|-able))." DVB_USB_
 
 DVB_DEFINE_MOD_OPT_ADAPTER_NR(adapter_nr);
 
-#define deb_rc(args...) dprintk(debug,0x01,args)
-#define deb_ee(args...) dprintk(debug,0x02,args)
+#define dbg_rc(fmt, ...)	dprintk(debug, 0x01, fmt, ##__VA_ARGS__)
+#define dbg_ee(fmt, ...)	dprintk(debug, 0x02, fmt, ##__VA_ARGS__)
 
 /* Hauppauge NOVA-T USB2 keys */
 static struct rc_map_table rc_map_haupp_table[] = {
@@ -94,15 +94,16 @@ static int nova_t_rc_query(struct dvb_usb_device *d, u32 *event, int *state)
 			data = raw & 0x3f;
 			custom = (raw >> 6) & 0x1f;
 
-			deb_rc("raw key code 0x%02x, 0x%02x, 0x%02x to c: %02x d: %02x toggle: %d\n",
+			dbg_rc("raw key code 0x%02x, 0x%02x, 0x%02x to c: %02x d: %02x toggle: %d\n",
 			       buf[1], buf[2], buf[3], custom, data, toggle);
 
 			for (i = 0; i < ARRAY_SIZE(rc_map_haupp_table); i++) {
 				if (rc5_data(&rc_map_haupp_table[i]) == data &&
 					rc5_custom(&rc_map_haupp_table[i]) == custom) {
 
-					deb_rc("c: %x, d: %x\n", rc5_data(&rc_map_haupp_table[i]),
-								 rc5_custom(&rc_map_haupp_table[i]));
+					dbg_rc("c: %x, d: %x\n",
+					       rc5_data(&rc_map_haupp_table[i]),
+					       rc5_custom(&rc_map_haupp_table[i]));
 
 					*event = rc_map_haupp_table[i].keycode;
 					*state = REMOTE_KEY_PRESSED;
diff --git a/drivers/media/usb/dvb-usb/technisat-usb2.c b/drivers/media/usb/dvb-usb/technisat-usb2.c
index f172120db2aa..4402823fa717 100644
--- a/drivers/media/usb/dvb-usb/technisat-usb2.c
+++ b/drivers/media/usb/dvb-usb/technisat-usb2.c
@@ -60,10 +60,10 @@ struct technisat_usb2_state {
 };
 
 /* debug print helpers */
-#define deb_info(args...)    dprintk(debug, 0x01, args)
-#define deb_eeprom(args...)  dprintk(debug, 0x02, args)
-#define deb_i2c(args...)     dprintk(debug, 0x04, args)
-#define deb_rc(args...)      dprintk(debug, 0x08, args)
+#define dbg_info(args...)    dprintk(debug, 0x01, args)
+#define dbg_eeprom(args...)  dprintk(debug, 0x02, args)
+#define dbg_i2c(args...)     dprintk(debug, 0x04, args)
+#define dbg_rc(args...)      dprintk(debug, 0x08, args)
 
 /* vendor requests */
 #define SET_IFCLK_TO_EXTERNAL_TSCLK_VENDOR_REQUEST 0xB3
@@ -91,9 +91,7 @@ static int technisat_usb2_i2c_access(struct usb_device *udev,
 	if (!b)
 		return -ENOMEM;
 
-	deb_i2c("i2c-access: %02x, tx: ", device_addr);
-	debug_dump(tx, txlen, deb_i2c);
-	deb_i2c(" ");
+	dbg_i2c("i2c-access: %02x, tx: %*ph\n", device_addr, (int)txlen, tx);
 
 	if (txlen > 62) {
 		err("i2c TX buffer can't exceed 62 bytes (dev 0x%02x)",
@@ -142,17 +140,15 @@ static int technisat_usb2_i2c_access(struct usb_device *udev,
 			goto err;
 	}
 
-	deb_i2c("status: %d, ", b[0]);
-
 	if (rx != NULL) {
 		memcpy(rx, &b[2], rxlen);
 
-		deb_i2c("rx (%d): ", rxlen);
-		debug_dump(rx, rxlen, deb_i2c);
+		dbg_i2c("status: %d, rx (%d): %*ph\n",
+			b[0], rxlen, (int)rxlen, rx);
+	} else {
+		dbg_i2c("status: %d\n", b[0]);
 	}
 
-	deb_i2c("\n");
-
 err:
 	kfree(b);
 	return ret;
@@ -397,10 +393,10 @@ static void technisat_usb2_eeprom_dump(struct dvb_usb_device *d)
 		if (technisat_usb2_i2c_access(d->udev, 0x50 + j / 256, &reg, 1, b, 16) != 0)
 			break;
 
-		deb_eeprom("EEPROM: %01x%02x: ", j / 256, reg);
+		dbg_eeprom("EEPROM: %01x%02x: ", j / 256, reg);
 		for (i = 0; i < 16; i++)
-			deb_eeprom("%02x ", b[i]);
-		deb_eeprom("\n");
+			dbg_eeprom("%02x ", b[i]);
+		dbg_eeprom("\n");
 	}
 }
 #endif
@@ -648,8 +644,7 @@ static int technisat_usb2_get_ir(struct dvb_usb_device *d)
 	/* decoding */
 
 #if 0
-	deb_rc("RC: %d ", ret);
-	debug_dump(buf + 1, ret, deb_rc);
+	dbg_rc("RC: %d %*ph", ret, ret, buf + 1);
 #endif
 
 	ev.pulse = 0;
diff --git a/drivers/media/usb/dvb-usb/ttusb2.c b/drivers/media/usb/dvb-usb/ttusb2.c
index 294274fd8f55..e5a6df348f9d 100644
--- a/drivers/media/usb/dvb-usb/ttusb2.c
+++ b/drivers/media/usb/dvb-usb/ttusb2.c
@@ -35,7 +35,8 @@
 
 /* debug */
 static int dvb_usb_ttusb2_debug;
-#define deb_info(args...)   dprintk(dvb_usb_ttusb2_debug,0x01,args)
+#define dbg_info(fmt, ...)						\
+	dprintk(dvb_usb_ttusb2_debug, 0x01, fmt, ##__VA_ARGS__)
 module_param_named(debug,dvb_usb_ttusb2_debug, int, 0644);
 MODULE_PARM_DESC(debug, "set debugging level (1=info (or-able))." DVB_USB_DEBUG_STATUS);
 static int dvb_usb_ttusb2_debug_ci;
@@ -44,11 +45,11 @@ MODULE_PARM_DESC(debug_ci, "set debugging ci." DVB_USB_DEBUG_STATUS);
 
 DVB_DEFINE_MOD_OPT_ADAPTER_NR(adapter_nr);
 
-#define ci_dbg(format, arg...)                \
-do {                                          \
+#define ci_dbg(fmt, ...)						\
+do {									\
 	if (dvb_usb_ttusb2_debug_ci)                                    \
-		printk(KERN_DEBUG DVB_USB_LOG_PREFIX \
-			": %s " format "\n" , __func__, ## arg);       \
+		printk(KERN_DEBUG DVB_USB_LOG_PREFIX ": %s " fmt "\n",	\
+		       __func__, ##__VA_ARGS__);			\
 } while (0)
 
 enum {
@@ -455,7 +456,7 @@ static int tt3650_rc_query(struct dvb_usb_device *d)
 	if (rx[8] & 0x01) {
 		/* got a "press" event */
 		st->last_rc_key = RC_SCANCODE_RC5(rx[3], rx[2]);
-		deb_info("%s: cmd=0x%02x sys=0x%02x\n", __func__, rx[2], rx[3]);
+		dbg_info("%s: cmd=0x%02x sys=0x%02x\n", __func__, rx[2], rx[3]);
 		rc_keydown(d->rc_dev, RC_PROTO_RC5, st->last_rc_key, rx[1]);
 	} else if (st->last_rc_key) {
 		rc_keyup(d->rc_dev);
@@ -526,7 +527,7 @@ static int ttusb2_frontend_tda10086_attach(struct dvb_usb_adapter *adap)
 		err("set interface to alts=3 failed");
 
 	if ((adap->fe_adap[0].fe = dvb_attach(tda10086_attach, &tda10086_config, &adap->dev->i2c_adap)) == NULL) {
-		deb_info("TDA10086 attach failed\n");
+		dbg_info("TDA10086 attach failed\n");
 		return -ENODEV;
 	}
 
@@ -551,7 +552,7 @@ static int ttusb2_frontend_tda10023_attach(struct dvb_usb_adapter *adap)
 			&tda10023_config, &adap->dev->i2c_adap, 0x48);
 
 		if (adap->fe_adap[0].fe == NULL) {
-			deb_info("TDA10023 attach failed\n");
+			dbg_info("TDA10023 attach failed\n");
 			return -ENODEV;
 		}
 		tt3650_ci_init(adap);
@@ -560,7 +561,7 @@ static int ttusb2_frontend_tda10023_attach(struct dvb_usb_adapter *adap)
 			&tda10048_config, &adap->dev->i2c_adap);
 
 		if (adap->fe_adap[1].fe == NULL) {
-			deb_info("TDA10048 attach failed\n");
+			dbg_info("TDA10048 attach failed\n");
 			return -ENODEV;
 		}
 
@@ -593,12 +594,12 @@ static int ttusb2_tuner_tda827x_attach(struct dvb_usb_adapter *adap)
 static int ttusb2_tuner_tda826x_attach(struct dvb_usb_adapter *adap)
 {
 	if (dvb_attach(tda826x_attach, adap->fe_adap[0].fe, 0x60, &adap->dev->i2c_adap, 0) == NULL) {
-		deb_info("TDA8263 attach failed\n");
+		dbg_info("TDA8263 attach failed\n");
 		return -ENODEV;
 	}
 
 	if (dvb_attach(lnbp21_attach, adap->fe_adap[0].fe, &adap->dev->i2c_adap, 0, 0) == NULL) {
-		deb_info("LNBP21 attach failed\n");
+		dbg_info("LNBP21 attach failed\n");
 		return -ENODEV;
 	}
 	return 0;
diff --git a/drivers/media/usb/dvb-usb/usb-urb.c b/drivers/media/usb/dvb-usb/usb-urb.c
index 9771f0954c69..26da9ef1d1ca 100644
--- a/drivers/media/usb/dvb-usb/usb-urb.c
+++ b/drivers/media/usb/dvb-usb/usb-urb.c
@@ -19,10 +19,10 @@ static void usb_urb_complete(struct urb *urb)
 	int i;
 	u8 *b;
 
-	deb_uxfer("'%s' urb completed. status: %d, length: %d/%d, pack_num: %d, errors: %d\n",
-		ptype == PIPE_ISOCHRONOUS ? "isoc" : "bulk",
-		urb->status,urb->actual_length,urb->transfer_buffer_length,
-		urb->number_of_packets,urb->error_count);
+	dbg_uxfer("'%s' urb completed. status: %d, length: %d/%d, pack_num: %d, errors: %d\n",
+		  ptype == PIPE_ISOCHRONOUS ? "isoc" : "bulk",
+		  urb->status, urb->actual_length, urb->transfer_buffer_length,
+		  urb->number_of_packets, urb->error_count);
 
 	switch (urb->status) {
 		case 0:         /* success */
@@ -33,7 +33,7 @@ static void usb_urb_complete(struct urb *urb)
 		case -ESHUTDOWN:
 			return;
 		default:        /* error */
-			deb_ts("urb completion error %d.\n", urb->status);
+			dbg_ts("urb completion error %d\n", urb->status);
 			break;
 	}
 
@@ -43,14 +43,15 @@ static void usb_urb_complete(struct urb *urb)
 			for (i = 0; i < urb->number_of_packets; i++) {
 
 				if (urb->iso_frame_desc[i].status != 0)
-					deb_ts("iso frame descriptor has an error: %d\n",urb->iso_frame_desc[i].status);
+					dbg_ts("iso frame descriptor has an error: %d\n",
+					       urb->iso_frame_desc[i].status);
 				else if (urb->iso_frame_desc[i].actual_length > 0)
 					stream->complete(stream, b + urb->iso_frame_desc[i].offset, urb->iso_frame_desc[i].actual_length);
 
 				urb->iso_frame_desc[i].status = 0;
 				urb->iso_frame_desc[i].actual_length = 0;
 			}
-			debug_dump(b,20,deb_uxfer);
+			dbg_uxfer("%*ph\n", 20, b);
 			break;
 		case PIPE_BULK:
 			if (urb->actual_length > 0)
@@ -67,7 +68,7 @@ int usb_urb_kill(struct usb_data_stream *stream)
 {
 	int i;
 	for (i = 0; i < stream->urbs_submitted; i++) {
-		deb_ts("killing URB no. %d.\n",i);
+		dbg_ts("killing URB no. %d\n", i);
 
 		/* stop the URB */
 		usb_kill_urb(stream->urb_list[i]);
@@ -80,7 +81,7 @@ int usb_urb_submit(struct usb_data_stream *stream)
 {
 	int i,ret;
 	for (i = 0; i < stream->urbs_initialized; i++) {
-		deb_ts("submitting URB no. %d\n",i);
+		dbg_ts("submitting URB no. %d\n", i);
 		if ((ret = usb_submit_urb(stream->urb_list[i],GFP_ATOMIC))) {
 			err("could not submit URB no. %d - get them all back",i);
 			usb_urb_kill(stream);
@@ -96,7 +97,7 @@ static int usb_free_stream_buffers(struct usb_data_stream *stream)
 	if (stream->state & USB_STATE_URB_BUF) {
 		while (stream->buf_num) {
 			stream->buf_num--;
-			deb_mem("freeing buffer %d\n",stream->buf_num);
+			dbg_mem("freeing buffer %d\n", stream->buf_num);
 			usb_free_coherent(stream->udev, stream->buf_size,
 					  stream->buf_list[stream->buf_num],
 					  stream->dma_addr[stream->buf_num]);
@@ -113,24 +114,25 @@ static int usb_allocate_stream_buffers(struct usb_data_stream *stream, int num,
 	stream->buf_num = 0;
 	stream->buf_size = size;
 
-	deb_mem("all in all I will use %lu bytes for streaming\n",num*size);
+	dbg_mem("all in all I will use %lu bytes for streaming\n", num * size);
 
 	for (stream->buf_num = 0; stream->buf_num < num; stream->buf_num++) {
-		deb_mem("allocating buffer %d\n",stream->buf_num);
+		dbg_mem("allocating buffer %d\n", stream->buf_num);
 		if (( stream->buf_list[stream->buf_num] =
 					usb_alloc_coherent(stream->udev, size, GFP_KERNEL,
 					&stream->dma_addr[stream->buf_num]) ) == NULL) {
-			deb_mem("not enough memory for urb-buffer allocation.\n");
+			dbg_mem("not enough memory for urb-buffer allocation.\n");
 			usb_free_stream_buffers(stream);
 			return -ENOMEM;
 		}
-		deb_mem("buffer %d: %p (dma: %Lu)\n",
+		dbg_mem("buffer %d: %p (dma: %llu)\n",
 			stream->buf_num,
-stream->buf_list[stream->buf_num], (long long)stream->dma_addr[stream->buf_num]);
+			stream->buf_list[stream->buf_num],
+			(long long)stream->dma_addr[stream->buf_num]);
 		memset(stream->buf_list[stream->buf_num],0,size);
 		stream->state |= USB_STATE_URB_BUF;
 	}
-	deb_mem("allocation successful\n");
+	dbg_mem("allocation successful\n");
 
 	return 0;
 }
@@ -147,7 +149,7 @@ static int usb_bulk_urb_init(struct usb_data_stream *stream)
 	for (i = 0; i < stream->props.count; i++) {
 		stream->urb_list[i] = usb_alloc_urb(0, GFP_KERNEL);
 		if (!stream->urb_list[i]) {
-			deb_mem("not enough memory for urb_alloc_urb!.\n");
+			dbg_mem("not enough memory for urb_alloc_urb!.\n");
 			for (j = 0; j < i; j++)
 				usb_free_urb(stream->urb_list[j]);
 			return -ENOMEM;
@@ -180,7 +182,7 @@ static int usb_isoc_urb_init(struct usb_data_stream *stream)
 
 		stream->urb_list[i] = usb_alloc_urb(stream->props.u.isoc.framesperurb, GFP_KERNEL);
 		if (!stream->urb_list[i]) {
-			deb_mem("not enough memory for urb_alloc_urb!\n");
+			dbg_mem("not enough memory for urb_alloc_urb!\n");
 			for (j = 0; j < i; j++)
 				usb_free_urb(stream->urb_list[j]);
 			return -ENOMEM;
@@ -243,7 +245,7 @@ int usb_urb_exit(struct usb_data_stream *stream)
 
 	for (i = 0; i < stream->urbs_initialized; i++) {
 		if (stream->urb_list[i] != NULL) {
-			deb_mem("freeing URB no. %d.\n",i);
+			dbg_mem("freeing URB no. %d\n", i);
 			/* free the URBs */
 			usb_free_urb(stream->urb_list[i]);
 		}
diff --git a/drivers/media/usb/dvb-usb/vp702x-fe.c b/drivers/media/usb/dvb-usb/vp702x-fe.c
index c1e7931900ee..d2cf0858ed94 100644
--- a/drivers/media/usb/dvb-usb/vp702x-fe.c
+++ b/drivers/media/usb/dvb-usb/vp702x-fe.c
@@ -73,7 +73,7 @@ static int vp702x_fe_read_status(struct dvb_frontend *fe,
 {
 	struct vp702x_fe_state *st = fe->demodulator_priv;
 	vp702x_fe_refresh_state(st);
-	deb_fe("%s\n",__func__);
+	dbg_fe("%s\n", __func__);
 
 	if (st->lock == 0)
 		*status = FE_HAS_LOCK | FE_HAS_SYNC | FE_HAS_VITERBI | FE_HAS_SIGNAL | FE_HAS_CARRIER;
@@ -127,7 +127,7 @@ static int vp702x_fe_read_snr(struct dvb_frontend* fe, u16 *snr)
 
 static int vp702x_fe_get_tune_settings(struct dvb_frontend* fe, struct dvb_frontend_tune_settings *tune)
 {
-	deb_fe("%s\n",__func__);
+	dbg_fe("%s\n", __func__);
 	tune->min_delay_ms = 2000;
 	return 0;
 }
@@ -158,9 +158,9 @@ static int vp702x_fe_set_frontend(struct dvb_frontend *fe)
 	cmd[4] = (sr >> 4)  & 0xff;
 	cmd[5] = (sr << 4)  & 0xf0;
 
-	deb_fe("setting frontend to: %u -> %u (%x) LNB-based GHz, symbolrate: %d -> %lu (%lx)\n",
-			fep->frequency, freq, freq, fep->symbol_rate,
-			(unsigned long) sr, (unsigned long) sr);
+	dbg_fe("setting frontend to: %u -> %u (%x) LNB-based GHz, symbolrate: %d -> %lu (%lx)\n",
+	       fep->frequency, freq, freq, fep->symbol_rate,
+	       (unsigned long)sr, (unsigned long)sr);
 
 /*	if (fep->inversion == INVERSION_ON)
 		cmd[6] |= 0x80; */
@@ -185,9 +185,9 @@ static int vp702x_fe_set_frontend(struct dvb_frontend *fe)
 	vp702x_usb_inout_op(st->d, cmd, 8, cmd, 10, 100);
 
 	if (cmd[2] == 0 && cmd[3] == 0)
-		deb_fe("tuning failed.\n");
+		dbg_fe("tuning failed.\n");
 	else
-		deb_fe("tuning succeeded.\n");
+		dbg_fe("tuning succeeded.\n");
 
 	mutex_unlock(&dst->buf_mutex);
 
@@ -197,14 +197,14 @@ static int vp702x_fe_set_frontend(struct dvb_frontend *fe)
 static int vp702x_fe_init(struct dvb_frontend *fe)
 {
 	struct vp702x_fe_state *st = fe->demodulator_priv;
-	deb_fe("%s\n",__func__);
+	dbg_fe("%s\n", __func__);
 	vp702x_usb_in_op(st->d, RESET_TUNER, 0, 0, NULL, 0);
 	return 0;
 }
 
 static int vp702x_fe_sleep(struct dvb_frontend *fe)
 {
-	deb_fe("%s\n",__func__);
+	dbg_fe("%s\n", __func__);
 	return 0;
 }
 
@@ -215,7 +215,7 @@ static int vp702x_fe_send_diseqc_msg (struct dvb_frontend* fe,
 	struct vp702x_fe_state *st = fe->demodulator_priv;
 	struct vp702x_device_state *dst = st->d->priv;
 
-	deb_fe("%s\n",__func__);
+	dbg_fe("%s\n", __func__);
 
 	if (m->msg_len > 4)
 		return -EINVAL;
@@ -231,9 +231,9 @@ static int vp702x_fe_send_diseqc_msg (struct dvb_frontend* fe,
 	vp702x_usb_inout_op(st->d, cmd, 8, cmd, 10, 100);
 
 	if (cmd[2] == 0 && cmd[3] == 0)
-		deb_fe("diseqc cmd failed.\n");
+		dbg_fe("diseqc cmd failed.\n");
 	else
-		deb_fe("diseqc cmd succeeded.\n");
+		dbg_fe("diseqc cmd succeeded.\n");
 
 	mutex_unlock(&dst->buf_mutex);
 
@@ -243,7 +243,7 @@ static int vp702x_fe_send_diseqc_msg (struct dvb_frontend* fe,
 static int vp702x_fe_send_diseqc_burst(struct dvb_frontend *fe,
 				       enum fe_sec_mini_cmd burst)
 {
-	deb_fe("%s\n",__func__);
+	dbg_fe("%s\n", __func__);
 	return 0;
 }
 
@@ -254,7 +254,7 @@ static int vp702x_fe_set_tone(struct dvb_frontend *fe,
 	struct vp702x_device_state *dst = st->d->priv;
 	u8 *buf;
 
-	deb_fe("%s\n",__func__);
+	dbg_fe("%s\n", __func__);
 
 	st->tone_mode = tone;
 
@@ -272,9 +272,9 @@ static int vp702x_fe_set_tone(struct dvb_frontend *fe,
 
 	vp702x_usb_inout_op(st->d, buf, 8, buf, 10, 100);
 	if (buf[2] == 0 && buf[3] == 0)
-		deb_fe("set_tone cmd failed.\n");
+		dbg_fe("set_tone cmd failed.\n");
 	else
-		deb_fe("set_tone cmd succeeded.\n");
+		dbg_fe("set_tone cmd succeeded.\n");
 
 	mutex_unlock(&dst->buf_mutex);
 
@@ -287,7 +287,7 @@ static int vp702x_fe_set_voltage(struct dvb_frontend *fe,
 	struct vp702x_fe_state *st = fe->demodulator_priv;
 	struct vp702x_device_state *dst = st->d->priv;
 	u8 *buf;
-	deb_fe("%s\n",__func__);
+	dbg_fe("%s\n", __func__);
 
 	st->voltage = voltage;
 
@@ -305,9 +305,9 @@ static int vp702x_fe_set_voltage(struct dvb_frontend *fe,
 
 	vp702x_usb_inout_op(st->d, buf, 8, buf, 10, 100);
 	if (buf[2] == 0 && buf[3] == 0)
-		deb_fe("set_voltage cmd failed.\n");
+		dbg_fe("set_voltage cmd failed.\n");
 	else
-		deb_fe("set_voltage cmd succeeded.\n");
+		dbg_fe("set_voltage cmd succeeded.\n");
 
 	mutex_unlock(&dst->buf_mutex);
 	return 0;
diff --git a/drivers/media/usb/dvb-usb/vp702x.c b/drivers/media/usb/dvb-usb/vp702x.c
index bf54747e2e01..6e5c3bf1786f 100644
--- a/drivers/media/usb/dvb-usb/vp702x.c
+++ b/drivers/media/usb/dvb-usb/vp702x.c
@@ -46,8 +46,8 @@ static int vp702x_usb_in_op_unlocked(struct dvb_usb_device *d, u8 req,
 		ret = 0;
 
 
-	deb_xfer("in: req. %02x, val: %04x, ind: %04x, buffer: ",req,value,index);
-	debug_dump(b,blen,deb_xfer);
+	dbg_xfer("in: req. %02x, val: %04x, ind: %04x, buffer: %*ph\n",
+		 req, value, index, blen, b);
 
 	return ret;
 }
@@ -68,8 +68,8 @@ static int vp702x_usb_out_op_unlocked(struct dvb_usb_device *d, u8 req,
 				      u16 value, u16 index, u8 *b, int blen)
 {
 	int ret;
-	deb_xfer("out: req. %02x, val: %04x, ind: %04x, buffer: ",req,value,index);
-	debug_dump(b,blen,deb_xfer);
+	dbg_xfer("out: req. %02x, val: %04x, ind: %04x, buffer: %*ph\n",
+		 req, value, index, blen, b);
 
 	if ((ret = usb_control_msg(d->udev,
 			usb_sndctrlpipe(d->udev,0),
@@ -267,7 +267,7 @@ static int vp702x_rc_query(struct dvb_usb_device *d, u32 *event, int *state)
 
 	vp702x_usb_in_op(d,READ_REMOTE_REQ,0,0,key,10);
 
-	deb_rc("remote query key: %x %d\n",key[1],key[1]);
+	dbg_rc("remote query key: %x %d\n", key[1], key[1]);
 
 	if (key[1] == 0x44) {
 		*state = REMOTE_NO_KEY_PRESSED;
diff --git a/drivers/media/usb/dvb-usb/vp702x.h b/drivers/media/usb/dvb-usb/vp702x.h
index 18ad7ced2045..04117d5d1a97 100644
--- a/drivers/media/usb/dvb-usb/vp702x.h
+++ b/drivers/media/usb/dvb-usb/vp702x.h
@@ -6,10 +6,14 @@
 #include "dvb-usb.h"
 
 extern int dvb_usb_vp702x_debug;
-#define deb_info(args...) dprintk(dvb_usb_vp702x_debug,0x01,args)
-#define deb_xfer(args...) dprintk(dvb_usb_vp702x_debug,0x02,args)
-#define deb_rc(args...)   dprintk(dvb_usb_vp702x_debug,0x04,args)
-#define deb_fe(args...)   dprintk(dvb_usb_vp702x_debug,0x08,args)
+#define dbg_info(fmt, ...)						\
+	dprintk(dvb_usb_vp702x_debug, 0x01, fmt, ##__VA_ARGS__)
+#define dbg_xfer(fmt, ...)						\
+	dprintk(dvb_usb_vp702x_debug, 0x02, fmt, ##__VA_ARGS__)
+#define dbg_rc(fmt, ...)						\
+	dprintk(dvb_usb_vp702x_debug, 0x04, fmt, ##__VA_ARGS__)
+#define dbg_fe(fmt, ...)						\
+	dprintk(dvb_usb_vp702x_debug, 0x08, fmt, ##__VA_ARGS__)
 
 /* commands are read and written with USB control messages */
 
diff --git a/drivers/media/usb/dvb-usb/vp7045.c b/drivers/media/usb/dvb-usb/vp7045.c
index 23e3a90af1f4..e06b9d627285 100644
--- a/drivers/media/usb/dvb-usb/vp7045.c
+++ b/drivers/media/usb/dvb-usb/vp7045.c
@@ -18,9 +18,12 @@ MODULE_PARM_DESC(debug, "set debugging level (1=info,xfer=2,rc=4 (or-able))." DV
 
 DVB_DEFINE_MOD_OPT_ADAPTER_NR(adapter_nr);
 
-#define deb_info(args...) dprintk(dvb_usb_vp7045_debug,0x01,args)
-#define deb_xfer(args...) dprintk(dvb_usb_vp7045_debug,0x02,args)
-#define deb_rc(args...)   dprintk(dvb_usb_vp7045_debug,0x04,args)
+#define dbg_info(fmt, ...)						\
+	dprintk(dvb_usb_vp7045_debug, 0x01, fmt, ##__VA_ARGS__)
+#define dbg_xfer(fmt, ...)						\
+	dprintk(dvb_usb_vp7045_debug, 0x02, fmt, ##__VA_ARGS__)
+#define dbg_rc(fmt, ...)						\
+	dprintk(dvb_usb_vp7045_debug, 0x04, fmt, ##__VA_ARGS__)
 
 int vp7045_usb_op(struct dvb_usb_device *d, u8 cmd, u8 *out, int outlen, u8 *in, int inlen, int msec)
 {
@@ -42,9 +45,7 @@ int vp7045_usb_op(struct dvb_usb_device *d, u8 cmd, u8 *out, int outlen, u8 *in,
 	if (out != NULL && outlen > 0)
 		memcpy(&buf[1], out, outlen);
 
-	deb_xfer("out buffer: ");
-	debug_dump(buf, outlen+1, deb_xfer);
-
+	dbg_xfer("out buffer: %*ph\n", outlen + 1, buf);
 
 	if (usb_control_msg(d->udev,
 			usb_sndctrlpipe(d->udev,0),
@@ -66,8 +67,7 @@ int vp7045_usb_op(struct dvb_usb_device *d, u8 cmd, u8 *out, int outlen, u8 *in,
 		goto unlock;
 	}
 
-	deb_xfer("in buffer: ");
-	debug_dump(buf, 12, deb_xfer);
+	dbg_xfer("in buffer: %*ph\n", 12, buf);
 
 	if (in != NULL && inlen > 0)
 		memcpy(in, &buf[1], inlen);
@@ -103,7 +103,7 @@ static int vp7045_rc_query(struct dvb_usb_device *d)
 	if (ret)
 		return ret;
 
-	deb_rc("remote query key: %x\n", key);
+	dbg_rc("remote query key: %x\n", key);
 
 	if (key != 0x44) {
 		/*
@@ -129,8 +129,9 @@ static int vp7045_read_eeprom(struct dvb_usb_device *d,u8 *buf, int len, int off
 
 		buf[i] = br[1];
 	}
-	deb_info("VP7045 EEPROM read (offs: %d, len: %d) : ", offset, i);
-	debug_dump(buf, i, deb_info);
+	dbg_info("VP7045 EEPROM read (offs: %d, len: %d) : %*ph\n",
+		 offset, i, i, buf);
+
 	return 0;
 }
 
@@ -145,15 +146,15 @@ static int vp7045_frontend_attach(struct dvb_usb_adapter *adap)
 
 	vp7045_usb_op(adap->dev,VENDOR_STRING_READ,NULL,0,buf,20,0);
 	buf[10] = '\0';
-	deb_info("firmware says: %s ",buf);
+	dbg_info("firmware says: %s\n", buf);
 
 	vp7045_usb_op(adap->dev,PRODUCT_STRING_READ,NULL,0,buf,20,0);
 	buf[10] = '\0';
-	deb_info("%s ",buf);
+	dbg_info("%s\n", buf);
 
 	vp7045_usb_op(adap->dev,FW_VERSION_READ,NULL,0,buf,20,0);
 	buf[10] = '\0';
-	deb_info("v%s\n",buf);
+	dbg_info("v%s\n", buf);
 
 /*	Dump the EEPROM */
 /*	vp7045_read_eeprom(d,buf, 255, FX2_ID_ADDR); */


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
