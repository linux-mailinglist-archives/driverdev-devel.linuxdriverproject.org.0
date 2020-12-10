Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 331E02D5A58
	for <lists+driverdev-devel@lfdr.de>; Thu, 10 Dec 2020 13:21:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 44166207EF;
	Thu, 10 Dec 2020 12:21:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ttWk081Z6+hu; Thu, 10 Dec 2020 12:21:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6070120785;
	Thu, 10 Dec 2020 12:20:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9F7F21BF31C
 for <devel@linuxdriverproject.org>; Thu, 10 Dec 2020 12:20:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9B9E486103
 for <devel@linuxdriverproject.org>; Thu, 10 Dec 2020 12:20:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UumS7r8EnaWk for <devel@linuxdriverproject.org>;
 Thu, 10 Dec 2020 12:20:50 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from bmail1.ministro.hu (bmail1.ministro.hu [5.249.150.236])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C6F8E85F5B
 for <devel@driverdev.osuosl.org>; Thu, 10 Dec 2020 12:20:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by bmail1.ministro.hu (Postfix) with ESMTP id C0442123B01;
 Thu, 10 Dec 2020 13:20:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ministro.hu;
 s=201804; t=1607602845;
 bh=lWt/ZnKjT5LXF96XKCdSkHGERGRgsvcLw43WAa2TP90=;
 h=Date:From:To:Subject:From;
 b=qm1InUokk+EYwr6RWyfoex5GMraLmN2vY2FUzYsVohWu245rCG8Nlzg63iYY7StZW
 VnV25j5w0Z5EacZyKp0eMJDyIdJ9tetkytsVc81dzvqT3zbfmy0qw0G+Uav4J7jZEm
 IfhhuWiRRjpSXcxpYQeOBMS1Clg330oxNbNsTzQra6zgbEoHuiPZNwXQzUgxqSw3bI
 3ZfZckaNBKwrs9KWkmjL40EA7jN+7sXum1DudnxxT22pnA0kZXcspp1MyqQEQHW4kO
 uHA7a2bZLRrF53ZaNkCoSEev7NtfY3D5+xaIbCu190/gJydC3N1Aok38X0qlpPHAjx
 hSmjjI+FAEE8w==
X-Virus-Scanned: Debian amavisd-new at ministro.hu
Received: from bmail1.ministro.hu ([127.0.0.1])
 by localhost (bmail1.ministro.hu [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GYLa8aMO_iDP; Thu, 10 Dec 2020 13:20:14 +0100 (CET)
Received: from dincontrollerdev (localhost [127.0.0.1])
 by bmail1.ministro.hu (Postfix) with ESMTPSA id 86555123AFF;
 Thu, 10 Dec 2020 13:20:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ministro.hu;
 s=201804; t=1607602814;
 bh=lWt/ZnKjT5LXF96XKCdSkHGERGRgsvcLw43WAa2TP90=;
 h=Date:From:To:Subject:From;
 b=uUHjKK6wRDgH8ReITj8RxnN/LtJD2O9I8YFZT8jlF0fUQJDhBUWno36B0Hqm5PvIn
 +vWQCUgK4vnm3pPp+5Sy4nGOgSwoO+wjLcBLANOB/K9QmvfzRzBN47m00g59hvg16V
 upITZ2ajYZuxWEq6aAHL5th/N9W6btIBInvxdc5D+ldDlCzdbLTXoay/ULn4pSuy7R
 VJMVUxgkmhvradP1EZL1bOrj8+mCtN9E2ljGgzFwL1ZtWWXErxDyFmw8kZ30HTLFVR
 eBxuagQt5ikqKeWm09ju4GQNMPzkmll2YKHhFrVgZL0NNM1dBWgArVY0o85BZ5qZuE
 HU41HFD0pR5qw==
Date: Thu, 10 Dec 2020 12:20:10 +0000
From: =?iso-8859-1?Q?J=F3zsef_Horv=E1th?= <info@ministro.hu>
To: 'Rob Herring' <robh+dt@kernel.org>,
 'Greg Kroah-Hartman' <gregkh@linuxfoundation.org>,
 =?iso-8859-1?Q?'J=F3zsef_Horv=E1th'?= <info@ministro.hu>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 devel@driverdev.osuosl.org
Subject: [PATCH] Staging: silabs si4455 serial driver
Message-ID: <20201210122001.GA31758@dincontrollerdev>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

I send this again, because my original mail content was corrupted.

This is a serial port driver for
Silicon Labs Si4455 Sub-GHz transciver.

Signed-off-by: J=F3zsef Horv=E1th <info@ministro.hu>
---
 .../bindings/staging/serial/silabs,si4455.txt |   39 +
 drivers/staging/Kconfig                       |    2 +
 drivers/staging/Makefile                      |    1 +
 drivers/staging/si4455/Kconfig                |    8 +
 drivers/staging/si4455/Makefile               |    2 +
 drivers/staging/si4455/TODO                   |    3 +
 drivers/staging/si4455/si4455.c               | 1465 +++++++++++++++++
 drivers/staging/si4455/si4455_api.h           |   56 +
 8 files changed, 1576 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/staging/serial/silabs=
,si4455.txt
 create mode 100644 drivers/staging/si4455/Kconfig
 create mode 100644 drivers/staging/si4455/Makefile
 create mode 100644 drivers/staging/si4455/TODO
 create mode 100644 drivers/staging/si4455/si4455.c
 create mode 100644 drivers/staging/si4455/si4455_api.h

diff --git a/Documentation/devicetree/bindings/staging/serial/silabs,si4455=
.txt b/Documentation/devicetree/bindings/staging/serial/silabs,si4455.txt
new file mode 100644
index 000000000000..abd659b7b952
--- /dev/null
+++ b/Documentation/devicetree/bindings/staging/serial/silabs,si4455.txt
@@ -0,0 +1,39 @@
+* Silicon Labs Si4455 EASY-TO-USE, LOW-CURRENT OOK/(G)FSK SUB-GHZ TRANSCEI=
VER
+
+Required properties:
+- compatible: Should be one of the following:
+  - "silabs,si4455" for Silicon Labs Si4455-B1A or Si4455-C2A (driver auto=
matically detects the part info),
+  - "silabs,si4455b1a" for Silicon Labs Si4455-B1A,
+  - "silabs,si4455c2a" for Silicon Labs Si4455-C2A,
+- reg: SPI chip select number.
+- interrupts: Specifies the interrupt source of the parent interrupt
+  controller. The format of the interrupt specifier depends on the
+  parent interrupt controller.
+- clocks: phandle to the IC source clock (only external clock source suppo=
rted).
+- spi-max-frequency: maximum clock frequency on SPI port
+- shdn-gpios: gpio pin for SDN
+
+Example:
+
+/ {
+	clocks {
+                si4455_1_2_osc: si4455_1_2_osc {
+                        compatible =3D "fixed-clock";
+                        #clock-cells =3D <0>;
+                        clock-frequency  =3D <30000000>;
+                };
+	};
+};
+
+&spi0 {
+	si4455: si4455@0 {
+		compatible =3D "silabs,si4455";
+		reg =3D <0>;
+		clocks =3D <&si4455_1_2_osc>;
+		interrupt-parent =3D <&gpio>;
+		interrupts =3D <7 IRQ_TYPE_LEVEL_LOW>;
+                shdn-gpios =3D <&gpio 26 1>;
+                status =3D "okay";
+                spi-max-frequency =3D <3000000>;
+	};
+};
diff --git a/drivers/staging/Kconfig b/drivers/staging/Kconfig
index 9b7cb7c5766a..2cf0c9bfe878 100644
--- a/drivers/staging/Kconfig
+++ b/drivers/staging/Kconfig
@@ -118,4 +118,6 @@ source "drivers/staging/wfx/Kconfig"
 =

 source "drivers/staging/hikey9xx/Kconfig"
 =

+source "drivers/staging/si4455/Kconfig"
+
 endif # STAGING
diff --git a/drivers/staging/Makefile b/drivers/staging/Makefile
index 38226737c9f3..043c63287bc6 100644
--- a/drivers/staging/Makefile
+++ b/drivers/staging/Makefile
@@ -49,3 +49,4 @@ obj-$(CONFIG_QLGE)		+=3D qlge/
 obj-$(CONFIG_WIMAX)		+=3D wimax/
 obj-$(CONFIG_WFX)		+=3D wfx/
 obj-y				+=3D hikey9xx/
+obj-$(CONFIG_SERIAL_SI4455)	+=3D si4455/
diff --git a/drivers/staging/si4455/Kconfig b/drivers/staging/si4455/Kconfig
new file mode 100644
index 000000000000..666f726f2583
--- /dev/null
+++ b/drivers/staging/si4455/Kconfig
@@ -0,0 +1,8 @@
+# SPDX-License-Identifier: GPL-2.0
+config SERIAL_SI4455
+	tristate "Si4455 support"
+	depends on SPI
+	select SERIAL_CORE
+	help
+	  This driver is for Silicon Labs's Si4455 Sub-GHz transciver.
+	  Say 'Y' here if you wish to use it as serial port.
diff --git a/drivers/staging/si4455/Makefile b/drivers/staging/si4455/Makef=
ile
new file mode 100644
index 000000000000..1a6474673509
--- /dev/null
+++ b/drivers/staging/si4455/Makefile
@@ -0,0 +1,2 @@
+# SPDX-License-Identifier: GPL-2.0
+obj-$(CONFIG_SERIAL_SI4455) :=3D si4455.o
diff --git a/drivers/staging/si4455/TODO b/drivers/staging/si4455/TODO
new file mode 100644
index 000000000000..aee5c7613b31
--- /dev/null
+++ b/drivers/staging/si4455/TODO
@@ -0,0 +1,3 @@
+TODO:
+        - add variable packet length support
+        - add firmware patching support in case of Si4455-C2A
diff --git a/drivers/staging/si4455/si4455.c b/drivers/staging/si4455/si445=
5.c
new file mode 100644
index 000000000000..15f45f19ffdb
--- /dev/null
+++ b/drivers/staging/si4455/si4455.c
@@ -0,0 +1,1465 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2020 J=F3zsef Horv=E1th <info@ministro.hu>
+ *
+ */
+#include <linux/bitops.h>
+#include <linux/clk.h>
+#include <linux/delay.h>
+#include <linux/device.h>
+#include <linux/gpio/driver.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/of_device.h>
+#include <linux/of_gpio.h>
+#include <linux/regmap.h>
+#include <linux/serial_core.h>
+#include <linux/serial.h>
+#include <linux/tty.h>
+#include <linux/tty_flip.h>
+#include <linux/spi/spi.h>
+#include <linux/uaccess.h>
+#include "si4455_api.h"
+
+#define PORT_SI4455						1096
+#define SI4455_NAME						"si4455"
+#define SI4455_MAJOR						432
+#define SI4455_MINOR						567
+#define SI4455_UART_NRMAX					1
+#define SI4455_FIFO_SIZE					64
+
+#define SI4455_CMD_ID_EZCONFIG_CHECK				0x19
+#define SI4455_CMD_ID_PART_INFO					0x01
+#define SI4455_CMD_REPLY_COUNT_PART_INFO			9
+#define SI4455_CMD_ID_GET_INT_STATUS				0x20
+#define SI4455_CMD_REPLY_COUNT_GET_INT_STATUS			8
+#define SI4455_CMD_ID_FIFO_INFO					0x15
+#define SI4455_CMD_ARG_COUNT_FIFO_INFO				2
+#define SI4455_CMD_REPLY_COUNT_FIFO_INFO			2
+#define SI4455_CMD_FIFO_INFO_ARG_TX_BIT				0x01
+#define SI4455_CMD_FIFO_INFO_ARG_RX_BIT				0x02
+#define SI4455_CMD_ID_READ_CMD_BUFF				0x44
+#define SI4455_CMD_ID_READ_RX_FIFO				0x77
+#define SI4455_CMD_ID_WRITE_TX_FIFO				0x66
+#define SI4455_CMD_ID_START_RX					0x32
+#define SI4455_CMD_ARG_COUNT_START_RX				8
+#define SI4455_CMD_START_RX_ARG_RXTIMEOUT_STATE_ENUM_RX		8
+#define SI4455_CMD_START_RX_ARG_RXVALID_STATE_ENUM_RX		8
+#define SI4455_CMD_START_RX_ARG_RXINVALID_STATE_ENUM_RX		8
+#define SI4455_CMD_ID_START_TX					0x31
+#define SI4455_CMD_ARG_COUNT_START_TX				5
+#define SI4455_CMD_ID_CHANGE_STATE				0x34
+#define SI4455_CMD_ARG_COUNT_CHANGE_STATE			2
+#define SI4455_CMD_CHANGE_STATE_ARG_NEW_STATE_ENUM_READY	3
+#define SI4455_CMD_GET_CHIP_STATUS_REP_CMD_ERROR_PEND_MASK	0x08
+#define SI4455_CMD_GET_CHIP_STATUS_REP_CMD_ERROR_PEND_BIT	0x08
+#define SI4455_CMD_GET_INT_STATUS_REP_PACKET_SENT_PEND_BIT	0x20
+#define SI4455_CMD_GET_INT_STATUS_REP_PACKET_RX_PEND_BIT	0x10
+#define SI4455_CMD_GET_INT_STATUS_REP_CRC_ERROR_BIT		0x08
+#define SI4455_CMD_ID_GET_MODEM_STATUS				0x22
+#define SI4455_CMD_ARG_COUNT_GET_MODEM_STATUS			2
+#define SI4455_CMD_REPLY_COUNT_GET_MODEM_STATUS			8
+
+struct si4455_part_info {
+	u8				CHIPREV;
+	u16				PART;
+	u8				PBUILD;
+	u16				ID;
+	u8				CUSTOMER;
+	u8				ROMID;
+	u8				BOND;
+};
+
+struct si4455_int_status {
+	u8				INT_PEND;
+	u8				INT_STATUS;
+	u8				PH_PEND;
+	u8				PH_STATUS;
+	u8				MODEM_PEND;
+	u8				MODEM_STATUS;
+	u8				CHIP_PEND;
+	u8				CHIP_STATUS;
+};
+
+struct si4455_modem_status {
+	u8				MODEM_PEND;
+	u8				MODEM_STATUS;
+	u8				CURR_RSSI;
+	u8				LATCH_RSSI;
+	u8				ANT1_RSSI;
+	u8				ANT2_RSSI;
+	u16			AFC_FREQ_OFFSET;
+};
+
+struct si4455_fifo_info {
+	u8				RX_FIFO_COUNT;
+	u8				TX_FIFO_SPACE;
+};
+
+struct si4455_one {
+	struct uart_port		port;
+	struct work_struct		tx_work;
+};
+
+struct si4455_port {
+	struct mutex			mutex;
+	int				power_count;
+	struct gpio_desc		*shdn_gpio;
+	struct si4455_part_info		part_info;
+	struct si4455_modem_status	modem_status;
+	struct si4455_iocbuff		configuration;
+	struct si4455_iocbuff		patch;
+	u32				tx_channel;
+	u32				rx_channel;
+	u32				package_size;
+	bool				configured;
+	bool				tx_pending;
+	bool				rx_pending;
+	u32				current_rssi;
+	struct si4455_one		one;
+};
+
+static struct uart_driver si4455_uart =3D {
+	.owner			=3D THIS_MODULE,
+	.driver_name		=3D SI4455_NAME,
+#ifdef CONFIG_DEVFS_FS
+	.dev_name		=3D "ttySI%d",
+#else
+	.dev_name		=3D "ttySI",
+#endif
+	.major			=3D SI4455_MAJOR,
+	.minor			=3D SI4455_MINOR,
+	.nr			=3D SI4455_UART_NRMAX,
+};
+
+static int si4455_get_response(struct uart_port *port,
+				int length,
+				u8 *data);
+static int si4455_send_command(struct uart_port *port,
+				int length,
+				u8 *data);
+static int si4455_send_command_get_response(struct uart_port *port,
+						int outLength,
+						u8 *outData,
+						int inLength,
+						u8 *inData);
+static int si4455_read_data(struct uart_port *port,
+				u8 command,
+				int pollCts,
+				int length,
+				u8 *data);
+static int si4455_write_data(struct uart_port *port,
+				u8 command,
+				int pollCts,
+				int length,
+				u8 *data);
+static int si4455_poll_cts(struct uart_port *port);
+static void si4455_set_power(struct si4455_port *priv,
+				int on);
+static int si4455_get_part_info(struct uart_port *port,
+				struct si4455_part_info *result);
+
+static int si4455_get_response(struct uart_port *port,
+				int length,
+				u8 *data)
+{
+	int ret =3D -EIO;
+	u8 dataOut[] =3D { SI4455_CMD_ID_READ_CMD_BUFF };
+	u8 *dataIn =3D devm_kzalloc(port->dev, 1 + length, GFP_KERNEL);
+	struct spi_transfer xfer[] =3D {
+		{
+			.tx_buf =3D dataOut,
+			.len =3D sizeof(dataOut),
+		}, {
+			.rx_buf =3D dataIn,
+			.len =3D 1 + length,
+		}
+	};
+	int errCnt =3D 10000;
+
+	while (errCnt > 0) {
+		dataOut[0] =3D SI4455_CMD_ID_READ_CMD_BUFF;
+		ret =3D spi_sync_transfer(to_spi_device(port->dev),
+					xfer,
+					ARRAY_SIZE(xfer));
+		if (ret =3D=3D 0) {
+			if (dataIn[0] =3D=3D 0xFF) {
+				if ((length > 0) && (data !=3D NULL)) {
+					memcpy(data, &dataIn[1], length);
+				} else {
+					if (length > 0)
+						ret =3D -EINVAL;
+				}
+				break;
+			}
+			usleep_range(100, 200);
+		} else {
+			break;
+		}
+		errCnt--;
+	}
+	if (errCnt =3D=3D 0) {
+		dev_err(port->dev, "si4455_poll_cts:errCnt=3D=3D%i", errCnt);
+		ret =3D -EIO;
+	}
+	if (dataIn !=3D NULL)
+		devm_kfree(port->dev, dataIn);
+	return ret;
+}
+
+static int si4455_send_command(struct uart_port *port,
+				int length,
+				u8 *data)
+{
+	int ret;
+
+	ret =3D si4455_poll_cts(port);
+	if (ret =3D=3D 0) {
+		ret =3D spi_write(to_spi_device(port->dev), data, length);
+		if (ret) {
+			dev_err(port->dev,
+				"%s: spi_write error(%i)",
+				__func__,
+				ret);
+		}
+	} else {
+		dev_err(port->dev,
+			"%s: si4455_poll_cts error(%i)",
+			__func__,
+			ret);
+	}
+	return ret;
+}
+
+static int si4455_send_command_get_response(struct uart_port *port,
+						int outLength,
+						u8 *outData,
+						int inLength,
+						u8 *inData)
+{
+	int ret;
+
+	ret =3D si4455_send_command(port, outLength, outData);
+	if (!ret) {
+		ret =3D si4455_get_response(port, inLength, inData);
+	} else {
+		dev_err(port->dev,
+			"%s: si4455_send_command error(%i)",
+			__func__,
+			ret);
+	}
+	return ret;
+}
+
+static int si4455_read_data(struct uart_port *port,
+				u8 command,
+				int pollCts,
+				int length,
+				u8 *data)
+{
+	int ret =3D 0;
+	u8 dataOut[] =3D { command };
+	struct spi_transfer xfer[] =3D {
+		{
+			.tx_buf =3D dataOut,
+			.len =3D sizeof(dataOut),
+		}, {
+			.rx_buf =3D data,
+			.len =3D length,
+		}
+	};
+
+	if (pollCts)
+		ret =3D si4455_poll_cts(port);
+
+	if (ret =3D=3D 0) {
+		ret =3D spi_sync_transfer(to_spi_device(port->dev),
+					xfer,
+					ARRAY_SIZE(xfer));
+		if (ret) {
+			dev_err(port->dev,
+				"%s: spi_sync_transfer error(%i)",
+				__func__,
+				ret);
+		}
+	}
+	return ret;
+}
+
+static int si4455_write_data(struct uart_port *port,
+				u8 command,
+				int pollCts,
+				int length,
+				u8 *data)
+{
+	int ret =3D 0;
+	u8 *dataOut =3D NULL;
+
+	if (pollCts)
+		ret =3D si4455_poll_cts(port);
+
+	if (ret =3D=3D 0) {
+		dataOut =3D devm_kzalloc(port->dev, 1 + length, GFP_KERNEL);
+		if (dataOut !=3D NULL) {
+			dataOut[0] =3D command;
+			memcpy(&dataOut[1], data, length);
+			ret =3D spi_write(to_spi_device(port->dev),
+					dataOut,
+					1 + length);
+			if (ret) {
+				dev_err(port->dev,
+					"%s: spi_write error(%i)",
+					__func__,
+					ret);
+			}
+		} else {
+			dev_err(port->dev,
+				"%s: devm_kzalloc error",
+				__func__);
+			ret =3D -ENOMEM;
+		}
+	}
+	if (dataOut !=3D NULL)
+		devm_kfree(port->dev, dataOut);
+
+	return ret;
+}
+
+static int si4455_poll_cts(struct uart_port *port)
+{
+	return si4455_get_response(port, 0, NULL);
+}
+
+static void si4455_set_power(struct si4455_port *priv,
+				int on)
+{
+	if (priv->shdn_gpio) {
+		if (on) {
+			gpiod_direction_output(priv->shdn_gpio, 0);
+			usleep_range(4000, 5000);
+			gpiod_set_value(priv->shdn_gpio, 1);
+			usleep_range(4000, 5000);
+		} else {
+			gpiod_direction_output(priv->shdn_gpio, 0);
+		}
+	}
+}
+
+static int si4455_s_power(struct device *dev,
+				int on)
+{
+	struct si4455_port *s =3D dev_get_drvdata(dev);
+
+	dev_dbg(dev, "%s(on=3D%d)\n", __func__, on);
+	if (s->power_count =3D=3D !on)
+		si4455_set_power(s, on);
+	s->power_count +=3D on ? 1 : -1;
+	WARN_ON(s->power_count < 0);
+
+	return 0;
+}
+
+static int si4455_get_part_info(struct uart_port *port,
+				struct si4455_part_info *result)
+{
+	int ret;
+	u8 dataOut[] =3D { SI4455_CMD_ID_PART_INFO };
+	u8 dataIn[SI4455_CMD_REPLY_COUNT_PART_INFO];
+
+	ret =3D si4455_send_command_get_response(port,
+						sizeof(dataOut),
+						dataOut,
+						sizeof(dataIn),
+						dataIn);
+	if (ret =3D=3D 0) {
+		result->CHIPREV =3D dataIn[0];
+		memcpy(&result->PART, &dataIn[1], sizeof(result->PART));
+		result->PBUILD =3D dataIn[3];
+		memcpy(&result->ID, &dataIn[4], sizeof(result->ID));
+		result->CUSTOMER =3D dataIn[6];
+		result->ROMID =3D dataIn[7];
+		result->BOND =3D dataIn[8];
+	} else {
+		dev_err(port->dev,
+			"%s: si4455_send_command_get_response error(%i)",
+			__func__,
+			ret);
+	}
+	return ret;
+}
+
+static int si4455_get_int_status(struct uart_port *port,
+					u8 phClear,
+					u8 modemClear,
+					u8 chipClear,
+					struct si4455_int_status *result)
+{
+	int ret;
+	u8 dataOut[] =3D {
+		SI4455_CMD_ID_GET_INT_STATUS,
+		phClear,
+		modemClear,
+		chipClear
+	};
+	u8 dataIn[SI4455_CMD_REPLY_COUNT_GET_INT_STATUS];
+
+	ret =3D si4455_send_command_get_response(port,
+						sizeof(dataOut),
+						dataOut,
+						sizeof(dataIn),
+						dataIn);
+	if (ret =3D=3D 0) {
+		result->INT_PEND       =3D dataIn[0];
+		result->INT_STATUS     =3D dataIn[1];
+		result->PH_PEND        =3D dataIn[2];
+		result->PH_STATUS      =3D dataIn[3];
+		result->MODEM_PEND     =3D dataIn[4];
+		result->MODEM_STATUS   =3D dataIn[5];
+		result->CHIP_PEND      =3D dataIn[6];
+		result->CHIP_STATUS    =3D dataIn[7];
+	} else {
+		dev_err(port->dev,
+			"%s: si4455_send_command_get_response error(%i)",
+			__func__,
+			ret);
+	}
+	return ret;
+}
+
+static int si4455_get_modem_status(struct uart_port *port,
+					u8 modemClear,
+					struct si4455_modem_status *result)
+{
+	int ret;
+	u8 dataOut[] =3D {
+		SI4455_CMD_ID_GET_MODEM_STATUS,
+		modemClear,
+	};
+	u8 dataIn[SI4455_CMD_REPLY_COUNT_GET_MODEM_STATUS];
+
+	ret =3D si4455_send_command_get_response(port,
+						sizeof(dataOut),
+						dataOut,
+						sizeof(dataIn),
+						dataIn);
+	if (ret =3D=3D 0) {
+		result->MODEM_PEND      =3D dataIn[0];
+		result->MODEM_STATUS    =3D dataIn[1];
+		result->CURR_RSSI       =3D dataIn[2];
+		result->LATCH_RSSI      =3D dataIn[3];
+		result->ANT1_RSSI       =3D dataIn[4];
+		result->ANT2_RSSI       =3D dataIn[5];
+		memcpy(&result->AFC_FREQ_OFFSET,
+			&dataIn[6],
+			sizeof(result->AFC_FREQ_OFFSET));
+	} else {
+		dev_err(port->dev,
+			"%s: si4455_send_command_get_response error(%i)",
+			__func__,
+			ret);
+	}
+	return ret;
+}
+
+static int si4455_fifo_info(struct uart_port *port,
+				u8 fifo,
+				struct si4455_fifo_info *result)
+{
+	int ret =3D 0;
+	u8 dataOut[SI4455_CMD_ARG_COUNT_FIFO_INFO] =3D {
+		SI4455_CMD_ID_FIFO_INFO, fifo
+	};
+	u8 dataIn[SI4455_CMD_REPLY_COUNT_FIFO_INFO] =3D { 0 };
+
+	ret =3D si4455_send_command_get_response(port,
+						sizeof(dataOut),
+						dataOut,
+						sizeof(dataIn),
+						dataIn);
+	if (ret =3D=3D 0) {
+		result->RX_FIFO_COUNT  =3D dataIn[0];
+		result->TX_FIFO_SPACE  =3D dataIn[1];
+	} else {
+		dev_err(port->dev,
+			"%s: si4455_send_command_get_response error(%i)",
+			__func__,
+			ret);
+	}
+	return ret;
+}
+
+static int si4455_read_rx_fifo(struct uart_port *port,
+				int length,
+				u8 *data)
+{
+	return si4455_read_data(port,
+				SI4455_CMD_ID_READ_RX_FIFO,
+				0,
+				length,
+				data);
+}
+
+static int si4455_write_tx_fifo(struct uart_port *port,
+				int length,
+				u8 *data)
+{
+	return si4455_write_data(port,
+					SI4455_CMD_ID_WRITE_TX_FIFO,
+					0,
+					length,
+					data);
+}
+
+static int si4455_rx(struct uart_port *port,
+			u32 channel,
+			u8 condition,
+			u16 length,
+			u8 nextState1,
+			u8 nextState2,
+			u8 nextState3)
+{
+	u8 dataOut[SI4455_CMD_ARG_COUNT_START_RX];
+
+	dataOut[0] =3D SI4455_CMD_ID_START_RX;
+	dataOut[1] =3D channel;
+	dataOut[2] =3D condition;
+	dataOut[3] =3D (u8)(length >> 8);
+	dataOut[4] =3D (u8)(length);
+	dataOut[5] =3D nextState1;
+	dataOut[6] =3D nextState2;
+	dataOut[7] =3D nextState3;
+
+	return si4455_send_command(port,
+					SI4455_CMD_ARG_COUNT_START_RX,
+					dataOut);
+}
+
+static int si4455_tx(struct uart_port *port,
+			u8 channel,
+			u8 condition,
+			u16 length)
+{
+	u8 dataOut[/*6*/ SI4455_CMD_ARG_COUNT_START_TX];
+
+	dataOut[0] =3D SI4455_CMD_ID_START_TX;
+	dataOut[1] =3D channel;
+	dataOut[2] =3D condition;
+	dataOut[3] =3D (u8)(length >> 8);
+	dataOut[4] =3D (u8)(length);
+	/*TODO: radioCmd[5] =3D 0x44; in case of rev c2a*/
+
+	return si4455_send_command(port,
+					/*6*/ SI4455_CMD_ARG_COUNT_START_TX,
+					dataOut);
+}
+
+static int si4455_change_state(struct uart_port *port,
+				u8 nextState1)
+{
+	u8 dataOut[SI4455_CMD_ARG_COUNT_CHANGE_STATE];
+
+	dataOut[0] =3D SI4455_CMD_ID_CHANGE_STATE;
+	dataOut[1] =3D (u8)nextState1;
+
+	return si4455_send_command(port,
+					SI4455_CMD_ARG_COUNT_CHANGE_STATE,
+					dataOut);
+}
+
+static int si4455_begin_tx(struct uart_port *port,
+				u32 channel,
+				int length,
+				u8 *data)
+{
+	int ret =3D 0;
+	struct si4455_int_status intStatus =3D { 0 };
+	struct si4455_fifo_info fifoInfo =3D { 0 };
+
+	dev_dbg(port->dev, "%s(%u, %u)", __func__, channel, length);
+	if ((length > SI4455_FIFO_SIZE) || (length < 0))
+		ret =3D -EINVAL;
+
+	if (ret =3D=3D 0) {
+		ret =3D si4455_change_state(port,
+			SI4455_CMD_CHANGE_STATE_ARG_NEW_STATE_ENUM_READY);
+		if (ret) {
+			dev_err(port->dev,
+				"%s: si4455_change_state error(%i)",
+				__func__,
+				ret);
+			goto end;
+		}
+		ret =3D si4455_get_int_status(port, 0, 0, 0, &intStatus);
+		if (ret) {
+			dev_err(port->dev,
+				"%s: si4455_get_int_status error(%i)",
+				__func__,
+				ret);
+			goto end;
+		}
+		ret =3D si4455_fifo_info(port,
+					SI4455_CMD_FIFO_INFO_ARG_TX_BIT,
+					&fifoInfo);
+		if (ret) {
+			dev_err(port->dev,
+				"%s: si4455_fifo_info error(%i)",
+				__func__,
+				ret);
+			goto end;
+		}
+		ret =3D si4455_write_tx_fifo(port, (u16)length, data);
+		if (ret) {
+			dev_err(port->dev,
+				"%s: si4455_write_tx_fifo error(%i)",
+				__func__,
+				ret);
+			goto end;
+		}
+		ret =3D si4455_tx(port,
+				(u8)channel,
+				0x30,
+				(u16)length);
+		if (ret) {
+			dev_err(port->dev,
+				"%s: si4455_tx error(%i)",
+				__func__,
+				ret);
+			goto end;
+		}
+	}
+end:
+	return ret;
+}
+
+static int si4455_end_tx(struct uart_port *port)
+{
+	int ret =3D 0;
+	struct si4455_int_status intStatus =3D { 0 };
+
+	ret =3D si4455_change_state(port,
+			SI4455_CMD_CHANGE_STATE_ARG_NEW_STATE_ENUM_READY);
+	if (ret) {
+		dev_err(port->dev,
+			"%s: si4455_change_state error(%i)",
+			__func__,
+			ret);
+		goto end;
+	}
+	ret =3D si4455_get_int_status(port, 0, 0, 0, &intStatus);
+	if (ret) {
+		dev_err(port->dev,
+			"%s: si4455_get_int_status error(%i)",
+			__func__,
+			ret);
+		goto end;
+	}
+end:
+	return ret;
+}
+
+static int si4455_begin_rx(struct uart_port *port,
+				u32 channel,
+				u32 length)
+{
+	int ret =3D 0;
+	struct si4455_int_status intStatus =3D { 0 };
+	struct si4455_fifo_info fifoInfo =3D { 0 };
+
+	dev_dbg(port->dev, "%s(%u, %u)", __func__, channel, length);
+	ret =3D si4455_get_int_status(port, 0, 0, 0, &intStatus);
+	if (ret) {
+		dev_err(port->dev,
+			"%s: si4455_get_int_status error(%i)",
+			__func__,
+			ret);
+		goto end;
+	}
+	ret =3D si4455_fifo_info(port,
+				SI4455_CMD_FIFO_INFO_ARG_RX_BIT,
+				&fifoInfo);
+	if (ret) {
+		dev_err(port->dev,
+			"%s: si4455_fifo_info error(%i)",
+			__func__,
+			ret);
+		goto end;
+	}
+	ret =3D si4455_rx(port,
+			channel,
+			0x00,
+			length,
+			SI4455_CMD_START_RX_ARG_RXTIMEOUT_STATE_ENUM_RX,
+			SI4455_CMD_START_RX_ARG_RXVALID_STATE_ENUM_RX,
+			SI4455_CMD_START_RX_ARG_RXINVALID_STATE_ENUM_RX);
+	if (ret) {
+		dev_err(port->dev,
+			"%s: si4455_rx error(%i)",
+			__func__,
+			ret);
+		goto end;
+	}
+end:
+	return ret;
+}
+
+static int si4455_end_rx(struct uart_port *port,
+				u32 length,
+				u8 *data)
+{
+	return si4455_read_rx_fifo(port, length, data);
+}
+
+static int si4455_configure(struct uart_port *port,
+				u8 *configurationData)
+{
+	int ret =3D 0;
+	u8 col;
+	u8 response;
+	u8 numOfBytes;
+	struct si4455_int_status intStatus =3D { 0 };
+	u8 radioCmd[16u];
+
+	/* While cycle as far as the pointer points to a command */
+	while (*configurationData !=3D 0x00) {
+		/* Commands structure in the array:
+		 * --------------------------------
+		 * LEN | <LEN length of data>
+		 */
+		numOfBytes =3D *configurationData++;
+		dev_dbg(port->dev,
+			"%s: numOfBytes(%u)",
+			__func__,
+			numOfBytes);
+		if (numOfBytes > 16u) {
+			/* Initial configuration of Si4x55 */
+			if (SI4455_CMD_ID_WRITE_TX_FIFO
+				 =3D=3D *configurationData) {
+				if (numOfBytes > 128u) {
+					/* Number of command bytes exceeds
+					 * maximal allowable length
+					 */
+					dev_err(port->dev,
+						"%s: command length error(%i)",
+						__func__,
+						numOfBytes);
+					ret =3D -EINVAL;
+					break;
+				}
+
+				/* Load array to the device */
+				configurationData++;
+				ret =3D si4455_write_data(port,
+						SI4455_CMD_ID_WRITE_TX_FIFO,
+						1,
+						numOfBytes - 1,
+						configurationData);
+				if (ret) {
+					dev_err(port->dev,
+						"%s: si4455_write_data error(%i)",
+						__func__,
+						ret);
+					break;
+				}
+
+				/* Point to the next command */
+				configurationData +=3D numOfBytes - 1;
+
+				/* Continue command interpreter */
+				continue;
+			} else {
+				/* Number of command bytes exceeds
+				 * maximal allowable length
+				 */
+				ret =3D -EINVAL;
+				break;
+			}
+		}
+
+		for (col =3D 0u; col < numOfBytes; col++) {
+			radioCmd[col] =3D *configurationData;
+			configurationData++;
+		}
+
+		dev_dbg(port->dev,
+			"%s: radioCmd[0](%u)",
+			__func__,
+			radioCmd[0]);
+		ret =3D si4455_send_command_get_response(port,
+							numOfBytes,
+							radioCmd,
+							1,
+							&response);
+		if (ret) {
+			dev_err(port->dev,
+				"%s: si4455_send_command_get_response error(%i)",
+				__func__,
+				ret);
+			break;
+		}
+
+		/* Check response byte of EZCONFIG_CHECK command */
+		if (radioCmd[0] =3D=3D SI4455_CMD_ID_EZCONFIG_CHECK) {
+			if (response) {
+				/* Number of command bytes exceeds
+				 * maximal allowable length
+				 */
+				ret =3D -EIO;
+				dev_err(port->dev,
+					"%s: EZConfig check error(%i)",
+					__func__,
+					radioCmd[0]);
+				break;
+			}
+		}
+
+		/* Get and clear all interrupts.  An error has occurred... */
+		si4455_get_int_status(port, 0, 0, 0, &intStatus);
+		if (intStatus.CHIP_PEND
+			& SI4455_CMD_GET_CHIP_STATUS_REP_CMD_ERROR_PEND_MASK) {
+			ret =3D -EIO;
+			dev_err(port->dev,
+				"%s: chip error(%i)",
+				__func__,
+				intStatus.CHIP_PEND);
+			break;
+		}
+	}
+
+	return ret;
+}
+
+static int si4455_re_configure(struct uart_port *port)
+{
+	int ret =3D 0;
+	struct si4455_port *s =3D dev_get_drvdata(port->dev);
+
+	mutex_lock(&s->mutex);
+	s->configured =3D 0;
+	if (s->power_count > 0)
+		si4455_s_power(port->dev, 0);
+
+	si4455_s_power(port->dev, 1);
+	if (s->configuration.length > 0) {
+		ret =3D si4455_configure(port, s->configuration.data);
+		if (ret =3D=3D 0)
+			s->configured =3D 1;
+
+	}
+	mutex_unlock(&s->mutex);
+	return ret;
+}
+
+static int si4455_do_work(struct uart_port *port)
+{
+	int ret =3D 0;
+	struct si4455_port *s =3D dev_get_drvdata(port->dev);
+	struct circ_buf *xmit =3D &port->state->xmit;
+	unsigned int tx_pending =3D 0;
+	unsigned int tx_to_end =3D 0;
+	u8 *data =3D NULL;
+
+	mutex_lock(&s->mutex);
+	if (s->configured && (s->power_count > 0)) {
+		if (!(uart_circ_empty(xmit)
+			|| uart_tx_stopped(port)
+			|| s->tx_pending)) {
+			tx_pending =3D uart_circ_chars_pending(xmit);
+			if (s->package_size > 0) {
+				if (tx_pending >=3D s->package_size) {
+					tx_pending =3D s->package_size;
+					data =3D devm_kzalloc(port->dev,
+						s->package_size,
+						GFP_KERNEL);
+					tx_to_end =3D CIRC_CNT_TO_END(xmit->head,
+								xmit->tail,
+								UART_XMIT_SIZE);
+					if (tx_to_end < tx_pending) {
+						memcpy(data,
+							xmit->buf + xmit->tail,
+							tx_to_end);
+						memcpy(data,
+							xmit->buf,
+							tx_pending - tx_to_end);
+					} else {
+						memcpy(data,
+							xmit->buf + xmit->tail,
+							tx_pending);
+					}
+					if (si4455_begin_tx(port,
+							s->tx_channel,
+							tx_pending,
+							data) =3D=3D 0) {
+						s->tx_pending =3D true;
+					}
+					devm_kfree(port->dev, data);
+				}
+			} else {
+				//TODO: variable packet length
+			}
+		}
+		if (!s->tx_pending) {
+			if (s->package_size > 0) {
+				ret =3D si4455_begin_rx(port,
+							s->rx_channel,
+							s->package_size);
+			} else {
+				//TODO: variable packet length
+			}
+		}
+	}
+	mutex_unlock(&s->mutex);
+	return ret;
+}
+
+static void si4455_handle_rx_pend(struct si4455_port *s)
+{
+	struct uart_port *port =3D &s->one.port;
+	u8 *data =3D NULL;
+	int sret =3D 0;
+	int i =3D 0;
+
+	if (s->package_size > 0) {
+		data =3D devm_kzalloc(port->dev,
+					s->package_size,
+					GFP_KERNEL);
+		sret =3D si4455_end_rx(port,
+				s->package_size,
+				data);
+		if (sret =3D=3D 0) {
+			for (i =3D 0; i < s->package_size; i++) {
+				uart_insert_char(port,
+					0,
+					0,
+					data[i],
+					TTY_NORMAL);
+				port->icount.rx++;
+			}
+			tty_flip_buffer_push(&port->state->port);
+		} else {
+			dev_err(port->dev,
+				"%s: si4455_end_rx error(%i)",
+				__func__,
+				sret);
+		}
+		devm_kfree(port->dev, data);
+	} else {
+		//TODO: variable packet length
+	}
+}
+
+static void si4455_handle_tx_pend(struct si4455_port *s)
+{
+	struct uart_port *port =3D &s->one.port;
+	struct circ_buf *xmit =3D &port->state->xmit;
+
+	if (s->tx_pending) {
+		if (s->package_size) {
+			port->icount.tx +=3D s->package_size;
+			xmit->tail =3D (xmit->tail + s->package_size)
+					& (UART_XMIT_SIZE - 1);
+		} else {
+			//TODO: variable packet length
+		}
+		si4455_end_tx(port);
+		s->tx_pending =3D 0;
+	}
+}
+
+static irqreturn_t si4455_port_irq(struct si4455_port *s)
+{
+	struct uart_port *port =3D &s->one.port;
+	irqreturn_t ret =3D IRQ_NONE;
+	struct si4455_int_status intStatus =3D { 0 };
+	struct si4455_fifo_info fifoInfo =3D { 0 };
+
+	mutex_lock(&s->mutex);
+	if (s->configured && (s->power_count > 0)) {
+		if (!si4455_get_int_status(port, 0, 0, 0, &intStatus)) {
+			si4455_get_modem_status(port, 0, &s->modem_status);
+			if (intStatus.CHIP_PEND
+			& SI4455_CMD_GET_CHIP_STATUS_REP_CMD_ERROR_PEND_BIT) {
+				dev_err(port->dev,
+					"%s: CHIP_STATUS:CMD_ERROR_PEND",
+					__func__);
+			} else if (intStatus.PH_PEND
+			& SI4455_CMD_GET_INT_STATUS_REP_PACKET_SENT_PEND_BIT) {
+				dev_dbg(port->dev,
+					"%s: PH_STATUS:PACKET_SENT_PEND",
+					__func__);
+				si4455_handle_tx_pend(s);
+			} else if (intStatus.PH_PEND
+			& SI4455_CMD_GET_INT_STATUS_REP_PACKET_RX_PEND_BIT) {
+				dev_dbg(port->dev,
+					"%s: PH_STATUS:PACKET_RX_PEND",
+					__func__);
+				s->current_rssi =3D s->modem_status.CURR_RSSI;
+				si4455_fifo_info(port, 0, &fifoInfo);
+				si4455_handle_rx_pend(s);
+			} else if (intStatus.PH_PEND
+			& SI4455_CMD_GET_INT_STATUS_REP_CRC_ERROR_BIT) {
+				dev_dbg(port->dev,
+					"%s: PH_STATUS:CRC_ERROR_PEND",
+					__func__);
+			}
+			ret =3D IRQ_HANDLED;
+		}
+	} else {
+		ret =3D IRQ_HANDLED;
+	}
+	mutex_unlock(&s->mutex);
+	si4455_do_work(port);
+	return ret;
+}
+
+static irqreturn_t si4455_ist(int irq,
+				void *dev_id)
+{
+	struct si4455_port *s =3D (struct si4455_port *)dev_id;
+	bool handled =3D false;
+
+	if (si4455_port_irq(s) =3D=3D IRQ_HANDLED)
+		handled =3D true;
+
+	return IRQ_RETVAL(handled);
+}
+
+static void si4455_tx_proc(struct work_struct *ws)
+{
+	struct si4455_one *one =3D container_of(ws,
+					struct si4455_one,
+					tx_work);
+
+	si4455_do_work(&one->port);
+}
+
+static unsigned int si4455_tx_empty(struct uart_port *port)
+{
+	return TIOCSER_TEMT;
+}
+
+static unsigned int si4455_get_mctrl(struct uart_port *port)
+{
+	dev_dbg(port->dev, "%s", __func__);
+	return TIOCM_DSR | TIOCM_CAR;
+}
+
+static void si4455_set_mctrl(struct uart_port *port,
+				unsigned int mctrl)
+{
+	dev_dbg(port->dev, "%s", __func__);
+}
+
+static void si4455_break_ctl(struct uart_port *port,
+				int break_state)
+{
+	dev_dbg(port->dev, "%s", __func__);
+}
+
+static void si4455_set_termios(struct uart_port *port,
+				struct ktermios *termios,
+				struct ktermios *old)
+{
+	dev_dbg(port->dev, "%s", __func__);
+}
+
+static int si4455_rs485_config(struct uart_port *port,
+				struct serial_rs485 *rs485)
+{
+	dev_dbg(port->dev, "%s", __func__);
+
+	return 0;
+}
+
+static int si4455_startup(struct uart_port *port)
+{
+	dev_dbg(port->dev, "%s", __func__);
+	si4455_s_power(port->dev, 1);
+	return 0;
+}
+
+static void si4455_shutdown(struct uart_port *port)
+{
+	dev_dbg(port->dev, "%s", __func__);
+	si4455_s_power(port->dev, 0);
+}
+
+static const char *si4455_type(struct uart_port *port)
+{
+	struct si4455_port *s =3D dev_get_drvdata(port->dev);
+
+	if (port->type =3D=3D PORT_SI4455) {
+		if (s->part_info.ROMID =3D=3D 3)
+			return "SI4455-B1A";
+		else if (s->part_info.ROMID =3D=3D 6)
+			return "SI4455-C2A";
+
+	}
+	return NULL;
+}
+
+static int si4455_request_port(struct uart_port *port)
+{
+	/* Do nothing */
+	dev_dbg(port->dev, "%s", __func__);
+	return 0;
+}
+
+static void si4455_config_port(struct uart_port *port,
+				int flags)
+{
+	dev_dbg(port->dev, "%s", __func__);
+	if (flags & UART_CONFIG_TYPE)
+		port->type =3D PORT_SI4455;
+}
+
+static int si4455_verify_port(struct uart_port *port,
+				struct serial_struct *s)
+{
+	if ((s->type !=3D PORT_UNKNOWN) && (s->type !=3D PORT_SI4455))
+		return -EINVAL;
+
+	if (s->irq !=3D port->irq)
+		return -EINVAL;
+
+	return 0;
+}
+
+static void si4455_start_tx(struct uart_port *port)
+{
+	struct si4455_one *one =3D container_of(port,
+					struct si4455_one,
+					port);
+
+	dev_dbg(port->dev, "%s", __func__);
+
+	if (!work_pending(&one->tx_work))
+		schedule_work(&one->tx_work);
+
+}
+
+static int si4455_ioctl(struct uart_port *port,
+			unsigned int cmd,
+			unsigned long arg)
+{
+	struct si4455_port *s =3D dev_get_drvdata(port->dev);
+	int ret =3D 0;
+
+	dev_dbg(port->dev, "%s(%u)", __func__, cmd);
+	switch (cmd) {
+	case SI4455_IOC_SEZC:
+	memcpy(&s->configuration, (void *)arg, sizeof(s->configuration));
+	dev_dbg(port->dev,
+		"%s(%u): SI4455_IOC_SEZC, length(%i)",
+		__func__,
+		cmd,
+		s->configuration.length);
+	ret =3D si4455_re_configure(port);
+	break;
+	case SI4455_IOC_CEZC:
+	dev_dbg(port->dev,
+		"%s(%u): SI4455_IOC_CEZC",
+		__func__,
+		cmd);
+	memset(&s->configuration, 0x00, sizeof(s->configuration));
+	ret =3D si4455_re_configure(port);
+	break;
+	case SI4455_IOC_SEZP:
+	memcpy(&s->patch, (void *)arg, sizeof(s->patch));
+	dev_dbg(port->dev,
+		"%s(%u): SI4455_IOC_SEZP, length(%i)",
+		__func__,
+		cmd,
+		s->configuration.length);
+	break;
+	case SI4455_IOC_CEZP:
+	dev_dbg(port->dev,
+		"%s(%u): SI4455_IOC_CEZP",
+		__func__,
+		cmd);
+	memset(&s->patch, 0x00, sizeof(s->patch));
+	break;
+	case SI4455_IOC_STXC:
+	s->tx_channel =3D *((u32 *)arg);
+	dev_dbg(port->dev,
+		"%s(%u): SI4455_IOC_STXC, tx_channel(%i)",
+		__func__,
+		cmd,
+		s->tx_channel);
+	break;
+	case SI4455_IOC_GTXC:
+	dev_dbg(port->dev,
+		"%s(%u): SI4455_IOC_GTXC",
+		__func__,
+		cmd);
+	*((u32 *)arg) =3D s->tx_channel;
+	break;
+	case SI4455_IOC_SRXC:
+	s->rx_channel =3D *((u32 *)arg);
+	dev_dbg(port->dev,
+		"%s(%u): SI4455_IOC_SRXC, rx_channel(%i)",
+		__func__,
+		cmd,
+		s->rx_channel);
+	break;
+	case SI4455_IOC_GRXC:
+	dev_dbg(port->dev,
+		"%s(%u): SI4455_IOC_GRXC",
+		__func__,
+		cmd);
+	*((u32 *)arg) =3D s->rx_channel;
+	break;
+	case SI4455_IOC_SSIZ:
+	s->package_size =3D *((u32 *)arg);
+	dev_dbg(port->dev,
+		"%s(%u): SI4455_IOC_SSIZ, package_size(%i)",
+		__func__,
+		cmd,
+		s->package_size);
+	break;
+	case SI4455_IOC_GSIZ:
+	dev_dbg(port->dev,
+		"%s(%u): SI4455_IOC_GSIZ",
+		__func__,
+		cmd);
+	*((u32 *)arg) =3D s->package_size;
+	break;
+	case SI4455_IOC_GRSSI:
+	dev_dbg(port->dev,
+		"%s(%u): SI4455_IOC_GRSSI",
+		__func__,
+		cmd);
+	*((u32 *)arg) =3D s->current_rssi;
+	break;
+	default:
+		ret =3D -ENOIOCTLCMD;
+	break;
+	}
+
+	if (ret =3D=3D 0)
+		si4455_do_work(port);
+
+	return ret;
+}
+
+
+static void si4455_null_void(struct uart_port *port)
+{
+	/* Do nothing */
+}
+
+static const struct uart_ops si4455_ops =3D {
+	.tx_empty		=3D si4455_tx_empty,
+	.set_mctrl		=3D si4455_set_mctrl,
+	.get_mctrl		=3D si4455_get_mctrl,
+	.stop_tx		=3D si4455_null_void,
+	.start_tx		=3D si4455_start_tx,
+	.stop_rx		=3D si4455_null_void,
+	.break_ctl		=3D si4455_break_ctl,
+	.startup		=3D si4455_startup,
+	.shutdown		=3D si4455_shutdown,
+	.set_termios		=3D si4455_set_termios,
+	.type			=3D si4455_type,
+	.request_port		=3D si4455_request_port,
+	.release_port		=3D si4455_null_void,
+	.config_port		=3D si4455_config_port,
+	.verify_port		=3D si4455_verify_port,
+	.ioctl			=3D si4455_ioctl,
+};
+
+static int __maybe_unused si4455_suspend(struct device *dev)
+{
+	struct si4455_port *s =3D dev_get_drvdata(dev);
+
+	uart_suspend_port(&si4455_uart, &s->one.port);
+	return 0;
+}
+
+static int __maybe_unused si4455_resume(struct device *dev)
+{
+	struct si4455_port *s =3D dev_get_drvdata(dev);
+
+	uart_resume_port(&si4455_uart, &s->one.port);
+
+	return 0;
+}
+
+static SIMPLE_DEV_PM_OPS(si4455_pm_ops, si4455_suspend, si4455_resume);
+
+static int si4455_probe(struct device *dev,
+			int irq)
+{
+	int ret;
+	struct si4455_port *s;
+
+	/* Alloc port structure */
+	dev_dbg(dev, "%s\n", __func__);
+	s =3D devm_kzalloc(dev, sizeof(*s), GFP_KERNEL);
+	if (!s) {
+		dev_err(dev, "Error allocating port structure\n");
+		return -ENOMEM;
+	}
+
+	dev_set_drvdata(dev, s);
+	mutex_init(&s->mutex);
+
+	s->shdn_gpio =3D devm_gpiod_get(dev, "shdn", GPIOD_OUT_HIGH);
+	if (IS_ERR(s->shdn_gpio)) {
+		dev_err(dev, "Unable to reguest shdn gpio\n");
+		ret =3D -EINVAL;
+		goto out_generic;
+	}
+
+	/* Initialize port data */
+	s->one.port.dev	=3D dev;
+	s->one.port.line =3D 0;
+	s->one.port.irq	=3D irq;
+	s->one.port.type	=3D PORT_SI4455;
+	s->one.port.fifosize	=3D SI4455_FIFO_SIZE;
+	s->one.port.flags	=3D UPF_FIXED_TYPE | UPF_LOW_LATENCY;
+	s->one.port.iotype	=3D UPIO_PORT;
+	s->one.port.iobase	=3D 0x00;
+	s->one.port.membase	=3D (void __iomem *)~0;
+	s->one.port.rs485_config =3D si4455_rs485_config;
+	s->one.port.ops	=3D &si4455_ops;
+
+	si4455_s_power(dev, 1);
+
+	//detect
+	ret =3D si4455_get_part_info(&s->one.port, &s->part_info);
+	dev_dbg(dev, "si4455_get_part_info()=3D=3D%i", ret);
+	if (ret =3D=3D 0) {
+		dev_dbg(dev, "partInfo.CHIPREV=3D %u", s->part_info.CHIPREV);
+		dev_dbg(dev, "partInfo.PART=3D %u", s->part_info.PART);
+		dev_dbg(dev, "partInfo.PBUILD=3D %u", s->part_info.PBUILD);
+		dev_dbg(dev, "partInfo.ID=3D %u", s->part_info.ID);
+		dev_dbg(dev, "partInfo.CUSTOMER=3D %u", s->part_info.CUSTOMER);
+		dev_dbg(dev, "partInfo.ROMID=3D %u", s->part_info.ROMID);
+		dev_dbg(dev, "partInfo.BOND=3D %u", s->part_info.BOND);
+		if (s->part_info.PART !=3D 0x5544) {
+			dev_err(dev, "PART(%u) error", s->part_info.PART);
+			ret =3D -ENODEV;
+		}
+	}
+	si4455_s_power(dev, 0);
+	if (ret)
+		goto out_generic;
+
+	/* Initialize queue for start TX */
+	INIT_WORK(&s->one.tx_work, si4455_tx_proc);
+
+	/* Register port */
+	ret =3D uart_add_one_port(&si4455_uart, &s->one.port);
+	if (ret) {
+		s->one.port.dev =3D NULL;
+		goto out_uart;
+	}
+
+	/* Setup interrupt */
+	ret =3D devm_request_threaded_irq(dev,
+					irq,
+					NULL,
+					si4455_ist,
+					IRQF_ONESHOT | IRQF_SHARED,
+					dev_name(dev),
+					s);
+	if (!ret)
+		return 0;
+
+	dev_err(dev, "Unable to reguest IRQ %i\n", irq);
+
+out_uart:
+	uart_remove_one_port(&si4455_uart, &s->one.port);
+out_generic:
+	mutex_destroy(&s->mutex);
+
+	return ret;
+}
+
+static int si4455_remove(struct device *dev)
+{
+	struct si4455_port *s =3D dev_get_drvdata(dev);
+
+	cancel_work_sync(&s->one.tx_work);
+	uart_remove_one_port(&si4455_uart, &s->one.port);
+
+	mutex_destroy(&s->mutex);
+
+	return 0;
+}
+
+static const struct of_device_id __maybe_unused si4455_dt_ids[] =3D {
+	{ .compatible =3D "silabs,si4455" },
+	{ .compatible =3D "silabs,si4455b1a" },
+	{ .compatible =3D "silabs,si4455c2a" },
+	{ }
+};
+MODULE_DEVICE_TABLE(of, si4455_dt_ids);
+
+static int si4455_spi_probe(struct spi_device *spi)
+{
+	int ret;
+
+	/* Setup SPI bus */
+	spi->bits_per_word	=3D 8;
+	spi->mode		    =3D SPI_MODE_0;
+	spi->max_speed_hz   =3D 100000;
+	ret =3D spi_setup(spi);
+	if (ret)
+		return ret;
+
+	if (spi->dev.of_node) {
+		const struct of_device_id *of_id
+			=3D of_match_device(si4455_dt_ids, &spi->dev);
+		if (!of_id)
+			return -ENODEV;
+
+	}
+
+	return si4455_probe(&spi->dev, spi->irq);
+}
+
+static int si4455_spi_remove(struct spi_device *spi)
+{
+	return si4455_remove(&spi->dev);
+}
+
+static const struct spi_device_id si4455_id_table[] =3D {
+	{ "si4455b1a" },
+	{ }
+};
+MODULE_DEVICE_TABLE(spi, si4455_id_table);
+
+static struct spi_driver si4455_spi_driver =3D {
+	.driver =3D {
+		.name		=3D SI4455_NAME,
+		.of_match_table	=3D of_match_ptr(si4455_dt_ids),
+		.pm		=3D &si4455_pm_ops,
+	},
+	.probe			=3D si4455_spi_probe,
+	.remove			=3D si4455_spi_remove,
+	.id_table		=3D si4455_id_table,
+};
+
+static int __init si4455_uart_init(void)
+{
+	int ret;
+
+	ret =3D uart_register_driver(&si4455_uart);
+	if (ret)
+		return ret;
+	spi_register_driver(&si4455_spi_driver);
+
+	return 0;
+}
+module_init(si4455_uart_init);
+
+static void __exit si4455_uart_exit(void)
+{
+	spi_unregister_driver(&si4455_spi_driver);
+	uart_unregister_driver(&si4455_uart);
+}
+module_exit(si4455_uart_exit);
+
+MODULE_LICENSE("GPL");
+MODULE_AUTHOR("J=F3zsef Horv=E1th <info@ministro.hu>");
+MODULE_DESCRIPTION("SI4455 serial driver");
diff --git a/drivers/staging/si4455/si4455_api.h b/drivers/staging/si4455/s=
i4455_api.h
new file mode 100644
index 000000000000..9b046bd006cf
--- /dev/null
+++ b/drivers/staging/si4455/si4455_api.h
@@ -0,0 +1,56 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2020 J=F3zsef Horv=E1th <info@ministro.hu>
+ *
+ */
+#ifndef SI4455_API_H_
+#define SI4455_API_H_
+
+struct si4455_iocbuff {
+	uint32_t	length;
+	uint8_t		data[4096];
+};
+
+#define BASE_TTYIOC_PRIVATE		0xA0
+/* Set EZConfig.
+ * After this ioctl call, the driver restarts the si4455,
+ * then apply the new configuration and patch.
+ */
+#define SI4455_IOC_SEZC		_IOW('T', \
+					BASE_TTYIOC_PRIVATE + 0x01, \
+					struct si4455_iocbuff)
+/* Clear driver EZConfig.
+ * After this ioctl call, the driver restarts the si4455,
+ * then apply the new configuration and patch.
+ */
+#define SI4455_IOC_CEZC		_IO('T', BASE_TTYIOC_PRIVATE + 0x02)
+/* Set radio patch.
+ * After this ioctl call, the driver restarts the si4455,
+ * then apply the new configuration and patch.
+ * This ioctl code is for future use only. Not implemented yet.
+ */
+#define SI4455_IOC_SEZP		_IOW('T', \
+					BASE_TTYIOC_PRIVATE + 0x03, \
+					struct si4455_iocbuff)
+/* Clear radio patch.
+ * After this ioctl call, the driver restarts the si4455,
+ * then apply the new configuration and patch.
+ * This ioctl code is for future use only. Not implemented yet.
+ */
+#define SI4455_IOC_CEZP		_IO('T', BASE_TTYIOC_PRIVATE + 0x04)
+/* Get transmit channel. */
+#define SI4455_IOC_GTXC		_IOR('T', BASE_TTYIOC_PRIVATE + 0x11, uint32_t)
+/* Set transmit channel. */
+#define SI4455_IOC_STXC		_IOW('T', BASE_TTYIOC_PRIVATE + 0x12, uint32_t)
+/* Get receive channel. */
+#define SI4455_IOC_GRXC		_IOR('T', BASE_TTYIOC_PRIVATE + 0x13, uint32_t)
+/* Set receive channel. */
+#define SI4455_IOC_SRXC		_IOW('T', BASE_TTYIOC_PRIVATE + 0x14, uint32_t)
+/* Get fixed length package size. */
+#define SI4455_IOC_GSIZ		_IOR('T', BASE_TTYIOC_PRIVATE + 0x15, uint32_t)
+/* Set fixed length package size. */
+#define SI4455_IOC_SSIZ		_IOW('T', BASE_TTYIOC_PRIVATE + 0x16, uint32_t)
+/* Get last rssi value. */
+#define SI4455_IOC_GRSSI	_IOR('T', BASE_TTYIOC_PRIVATE + 0x20, uint32_t)
+
+#endif
-- =

2.17.1



_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
