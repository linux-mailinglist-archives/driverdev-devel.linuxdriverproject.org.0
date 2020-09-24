Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DF0D82778F8
	for <lists+driverdev-devel@lfdr.de>; Thu, 24 Sep 2020 21:10:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 57DCA86B11;
	Thu, 24 Sep 2020 19:10:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pyNrUUwEoQ1A; Thu, 24 Sep 2020 19:10:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 865A286ABB;
	Thu, 24 Sep 2020 19:10:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 000011BF3C6
 for <devel@linuxdriverproject.org>; Thu, 24 Sep 2020 19:10:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id F02D586925
 for <devel@linuxdriverproject.org>; Thu, 24 Sep 2020 19:10:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Frv4x9ea9XU1 for <devel@linuxdriverproject.org>;
 Thu, 24 Sep 2020 19:10:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2F8E58690F
 for <devel@driverdev.osuosl.org>; Thu, 24 Sep 2020 19:10:17 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 08OIxQUv152675;
 Thu, 24 Sep 2020 19:10:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=zvSmpLYVjzX7A7q7pLh+dj7KUrnerGorGdY5IOugfYI=;
 b=BEM230M9x0BdwLxbJlLF78y69opSzDUmpWfZg59fDnMpBmq89OKR/kZMrxoEP7RAHLKn
 8UnW0LbTO5cUPWDLYNmaRGywmjrTKzdyhAgm5wDBjrUviZP+E4b2+MxhKeIwqtUX1JwU
 TgNMqoon0JjHc68P2I8+d9aAFGxBJGKWUoVU/fLezMLZVQP0AupWsyGYGbuVY+NpvdQp
 Wdv94St3A2/AZLT5X9M77IyVIC+rHLKTyy1j9zjUZeAJNQpaGHaiEm/IdhgQnmSDKmMP
 NQKxedNq7lnnFUKuQS89nK9S2dltagsBV6OXOUXdYSCeQHoIpT4CWQ1nbO5Izg5hoowB JA== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2120.oracle.com with ESMTP id 33q5rgre09-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 24 Sep 2020 19:10:14 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 08OJ1Uoi140937;
 Thu, 24 Sep 2020 19:08:13 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3030.oracle.com with ESMTP id 33nux39eec-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 24 Sep 2020 19:08:13 +0000
Received: from abhmp0005.oracle.com (abhmp0005.oracle.com [141.146.116.11])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 08OJ867W031985;
 Thu, 24 Sep 2020 19:08:06 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 24 Sep 2020 12:08:06 -0700
Date: Thu, 24 Sep 2020 22:07:58 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Srinivasan Raju <srini.raju@purelifi.com>
Subject: Re: [PATCH] staging: Initial driver submission for pureLiFi devices
Message-ID: <20200924190758.GM4282@kadam>
References: <20200924151910.21693-1-srini.raju@purelifi.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200924151910.21693-1-srini.raju@purelifi.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9754
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 mlxscore=0 adultscore=0
 bulkscore=0 mlxlogscore=999 phishscore=0 suspectscore=0 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2009240138
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9754
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 impostorscore=0
 clxscore=1011 suspectscore=0 phishscore=0 malwarescore=0
 priorityscore=1501 mlxlogscore=999 adultscore=0 bulkscore=0 mlxscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2006250000 definitions=main-2009240138
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Rob Herring <robh@kernel.org>, pureLiFi Ltd <info@purelifi.com>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, mostafa.afgani@purelifi.com,
 open list <linux-kernel@vger.kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Sep 24, 2020 at 08:48:51PM +0530, Srinivasan Raju wrote:
> +
> +#include <linux/kernel.h>
> +#include <linux/errno.h>
> +
> +#include "def.h"
> +#include "chip.h"
> +#include "mac.h"
> +#include "usb.h"
> +#include "log.h"
> +
> +void purelifi_chip_init(struct purelifi_chip *chip,
> +			struct ieee80211_hw *hw,
> +		struct usb_interface *intf
> +		)

There is a bunch of really trivial messiness like this.  It should
look like:

void purelifi_chip_init(struct purelifi_chip *chip,
			struct ieee80211_hw *hw,
			struct usb_interface *intf)


> +{
> +	memset(chip, 0, sizeof(*chip));
> +	mutex_init(&chip->mutex);
> +	purelifi_usb_init(&chip->usb, hw, intf);
> +}
> +
> +void purelifi_chip_clear(struct purelifi_chip *chip)
> +{
> +	PURELIFI_ASSERT(!mutex_is_locked(&chip->mutex));
> +	purelifi_usb_clear(&chip->usb);
> +	mutex_destroy(&chip->mutex);
> +	PURELIFI_MEMCLEAR(chip, sizeof(*chip));

Get rid of the PURELIFI_MEMCLEAR() macro.  The weird thing about
PURELIFI_MEMCLEAR() is that sometimes it's a no-op.  It seems
unnecessary to memset() the struct here.

I'm not a fan of all these tiny functions.  It feels like I have to
jump around a lot to understand the code.  What does "clear" mean in
this context.  Probably "release" is a better name.

> +}
> +
> +static int scnprint_mac_oui(struct purelifi_chip *chip, char *buffer,
> +			    size_t size)
> +{
> +	u8 *addr = purelifi_mac_get_perm_addr(purelifi_chip_to_mac(chip));
> +
> +	return scnprintf(buffer, size, "%02x-%02x-%02x",
> +			addr[0], addr[1], addr[2]);
> +}
> +
> +/* Prints an identifier line, which will support debugging. */
> +static int scnprint_id(struct purelifi_chip *chip, char *buffer, size_t size)

This function name is too vague.  What ID is it printing?

> +{
> +	int i = 0;

The initialization is not required.  "i" means "iterator".  This should
be "cnt" instead.

> +
> +	i = scnprintf(buffer, size, "purelifi%s chip ", "");
> +	i += purelifi_usb_scnprint_id(&chip->usb, buffer + i, size - i);
> +	i += scnprintf(buffer + i, size - i, " ");
> +	i += scnprint_mac_oui(chip, buffer + i, size - i);
> +	i += scnprintf(buffer + i, size - i, " ");
> +	return i;

This is an example of how tiny functions obfuscate the code.  It should
be written like this:

static void print_whatever(struct purelifi_chip *chip)
{
	u8 *addr = purelifi_mac_get_perm_addr(purelifi_chip_to_mac(chip));
	struct usb_device *udev = interface_to_usbdev(chip->usb.intf);

	pr_info("purelifi chip 04hx:%04hx v%04hx %s %02x-%02x-%02x\n",
		le16_to_cpu(udev->descriptor.idVendor),
		le16_to_cpu(udev->descriptor.idProduct),
		get_bcd_device(udev),
		speed(udev->speed),
		addr[0], addr[1], addr[2]);
}

> +}
> +
> +static void print_id(struct purelifi_chip *chip)
> +{
> +	char buffer[80];
> +
> +	scnprint_id(chip, buffer, sizeof(buffer));
> +	buffer[sizeof(buffer) - 1] = 0;

snprintf() functions alway put a NUL terminator on the end of the string.

> +	pl_dev_info(purelifi_chip_dev(chip), "%s\n", buffer);
> +}
> +
> +/* MAC address: if custom mac addresses are to be used CR_MAC_ADDR_P1 and
> + *              CR_MAC_ADDR_P2 must be overwritten
> + */
> +int purelifi_write_mac_addr(struct purelifi_chip *chip, const u8 *mac_addr)
> +{
> +	int r;
> +
> +	r = usb_write_req(mac_addr, ETH_ALEN, USB_REQ_MAC_WR);
> +	return r;

Delete the "r" variable.

	return usb_write_req(mac_addr, ETH_ALEN, USB_REQ_MAC_WR);

Again, I'm not a huge fan of one line functions for no reason. Actually,
the function is never called.  Just delete it.

> +}
> +
> +int purelifi_set_beacon_interval(struct purelifi_chip *chip, u16 interval,
> +				 u8 dtim_period, int type)
> +{
> +	int r;
> +
> +	if (!interval || (chip->beacon_set &&
> +			  chip->beacon_interval == interval)) {
> +		return 0;
> +	}
> +
> +	chip->beacon_interval = interval;
> +	chip->beacon_set = true;
> +	r = usb_write_req((const u8 *)&chip->beacon_interval,
> +			  sizeof(chip->beacon_interval),
> +			  USB_REQ_BEACON_INTERVAL_WR);
> +	return r;

Delete the "r" variable.

> +}
> +
> +static int hw_init(struct purelifi_chip *chip)
> +{
> +	return purelifi_set_beacon_interval(chip, 100, 0, 0);
> +}

This is a oneline function which is only called once.  Move it inline.

> +
> +int purelifi_chip_init_hw(struct purelifi_chip *chip)
> +{
> +	int r;
> +
> +	r = hw_init(chip);
> +	if (r)
> +		goto out;

Just return directly.  The little bunny hop doesn't add anything.

> +
> +	print_id(chip);
> +out:
> +	return r;
> +}

Anyway, those are some ideas.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
