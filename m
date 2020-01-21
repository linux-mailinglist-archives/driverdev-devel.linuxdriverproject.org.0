Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 84EDC1437EF
	for <lists+driverdev-devel@lfdr.de>; Tue, 21 Jan 2020 08:57:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5D10085EE9;
	Tue, 21 Jan 2020 07:57:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mL3mpNiO65sd; Tue, 21 Jan 2020 07:57:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DD4EB85E6F;
	Tue, 21 Jan 2020 07:57:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A553F1BF2B1
 for <devel@linuxdriverproject.org>; Tue, 21 Jan 2020 07:57:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A262A85D11
 for <devel@linuxdriverproject.org>; Tue, 21 Jan 2020 07:57:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GdsqJtrfrCE5 for <devel@linuxdriverproject.org>;
 Tue, 21 Jan 2020 07:57:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 195F585E60
 for <devel@driverdev.osuosl.org>; Tue, 21 Jan 2020 07:57:32 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00L7m0SO014859;
 Tue, 21 Jan 2020 07:57:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=alwLu0kbJlec3X7R75FTgJUTE8q4bv2yHed5DASt1jw=;
 b=dFWf5hfZSWhMmsZwE+I2JQlj3y72ZvvF84ac3mZGkb4/NLdyQsLxayMHrTZhdSGZIhkA
 CCSFMGFbzPret9F2g5f/prbc6S7zKDry9fr+HPrrzxmnOWBFZf70FHVV7dLM9DnznVfk
 8WciMvwkQ2HQrG+WhwBuBL6y6xd7V5kTlGzo636aaB4AhKeYkj8rr5M+w6RQJgjb+7JK
 vtQDpy3GlA8tfHd7/kMNMQmAg0LHnVHJtPCivHR/7L9C0MogoOtm+JIwEfECDN2vUEXN
 mKLmKksK/X4fvdI40bLI60PZ920W4oUQqoRuOgrxxdl5jKRFxAcsaTb4+AbFyc/CKBKT Fw== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2120.oracle.com with ESMTP id 2xktnr31tc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 21 Jan 2020 07:57:26 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00L7nAu2008958;
 Tue, 21 Jan 2020 07:57:26 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3020.oracle.com with ESMTP id 2xnsj430w1-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 21 Jan 2020 07:57:26 +0000
Received: from abhmp0002.oracle.com (abhmp0002.oracle.com [141.146.116.8])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 00L7vNW7014388;
 Tue, 21 Jan 2020 07:57:24 GMT
Received: from kadam (/129.205.23.165) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 20 Jan 2020 23:57:22 -0800
Date: Tue, 21 Jan 2020 11:01:52 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Vladimir Stankovic <vladimir.stankovic@displaylink.com>
Subject: Re: staging: Add MA USB Host driver
Message-ID: <20200121080152.GF21151@kadam>
References: <VI1PR10MB19659B32E563620B4D63AF1A91320@VI1PR10MB1965.EURPRD10.PROD.OUTLOOK.COM>
 <VI1PR10MB1965A077526FE296608D5B1191320@VI1PR10MB1965.EURPRD10.PROD.OUTLOOK.COM>
 <VI1PR10MB19658F2B6FDAD88FAA05546591320@VI1PR10MB1965.EURPRD10.PROD.OUTLOOK.COM>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <VI1PR10MB19658F2B6FDAD88FAA05546591320@VI1PR10MB1965.EURPRD10.PROD.OUTLOOK.COM>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9506
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-2001210068
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9506
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-2001210068
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 Petar Kovacevic <petar.kovacevic@displaylink.com>,
 Nikola Simic <nikola.simic@displaylink.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Marko Miljkovic <marko.miljkovic@displaylink.com>,
 Stefan Lugonjic <stefan.lugonjic@displaylink.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This code is not terrible.  It would have helped a lot if you had
run it through checkpatch --strict.

This driver initializes most local variables to zero which disables
GCC's uninitialized error variable checking and generally makes the code
harder to understand.  Try to remove this as much as you can.

On Mon, Jan 20, 2020 at 09:30:43AM +0000, Vladimir Stankovic wrote:
> +++ b/drivers/staging/mausb_host/Kconfig
> @@ -0,0 +1,15 @@
> +#
> +# Copyright (c) 2019 - 2020 DisplayLink (UK) Ltd.
> +#
> +# This file is subject to the terms and conditions of the GNU General Public
> +# License v2. See the file COPYING in the main directory of this archive for
> +# more details.
> +#
> +
> +config HOST_MAUSB
> +	bool "MA-USB Host Driver"
> +	depends on USB=y

Why can't HOST_MAUSB be built as a module?

> +	default y

It should default to disabled.


> +static int mausb_insert_usb_device(struct mausb_dev *mdevs,
> +			    struct mausb_usb_device_ctx *usb_device)
> +{
> +	struct rb_node **new_node = &(mdevs->usb_devices.rb_node),
> +		       *parent = NULL;

This is another this which the code has all over.  Split these up into
two lines.

	struct rb_node **new_node = &mdevs->usb_devices.rb_node;
	struct rb_node *parent = NULL;

Search for all the lines that end in a comma and fix them.


> +static int mausb_hcd_start(struct usb_hcd *hcd)
> +{
> +	mausb_pr_info("");

There is too much debug output.  Here we can use ftrace to get this
information.  A lot of the warning messages are not clear.  One just
says "Fragmentation" without telling the user what to do.  I guess
search for quotes and think about rephrasing or deleting stuff.

> +
> +	hcd->power_budget = 0;
> +	hcd->uses_new_polling = 1;
> +	return 0;
> +}

[ snip ]

> +static int mausb_drop_endpoint(struct usb_hcd *hcd, struct usb_device *dev,
> +			struct usb_host_endpoint *endpoint)
> +{
> +	int8_t	port_number = 0;
> +	int	status	    = 0,
> +		retries	    = 0;
> +	struct hub_ctx		    *hub = (struct hub_ctx *)hcd->hcd_priv;
> +	struct mausb_device	    *ma_dev;
> +	struct mausb_usb_device_ctx *usb_device_ctx;
> +	struct mausb_endpoint_ctx   *endpoint_ctx = endpoint->hcpriv;
> +	unsigned long flags;
> +
> +	port_number = get_root_hub_port_number(dev);
> +
> +	if (port_number < 0 || port_number >= NUMBER_OF_PORTS) {
> +		mausb_pr_info("port_number out of range, port_number=%x",
> +			      port_number);
> +		return -EINVAL;
> +	}
> +
> +	spin_lock_irqsave(&mhcd->lock, flags);
> +	ma_dev = hub->ma_devs[port_number].ma_dev;
> +	spin_unlock_irqrestore(&mhcd->lock, flags);
> +
> +	if (!ma_dev) {
> +		mausb_pr_err("MAUSB device not found on port_number=%d",
> +			     port_number);
> +		return -ENODEV;
> +	}
> +
> +	usb_device_ctx =
> +	    mausb_find_usb_device(&hub->ma_devs[port_number], dev);
> +
> +	if (!endpoint_ctx) {
> +		mausb_pr_err("Endpoint context doesn't exist");
> +		return 0;
> +	}
> +	if (!usb_device_ctx) {
> +		mausb_pr_err("Usb device context doesn't exist");
> +		return 0;
> +	}
> +
> +	mausb_pr_info("Start dropping ep_handle=%#x, dev_handle=%#x",
> +		      endpoint_ctx->ep_handle, endpoint_ctx->dev_handle);
> +
> +	if (atomic_read(&ma_dev->unresponsive_client)) {
> +		mausb_pr_err("Client is not responsive anymore - drop endpoint immediately");
> +		endpoint->hcpriv = NULL;
> +		kfree(endpoint_ctx);
> +		return status;

This is an example where disabling GCC's uninitialized variable checking
hurts the code.  This should be "return 0;" or "return -ESOMETHING;".


> +	}
> +
> +	status = mausb_epinactivate_event_to_user(ma_dev,
> +						  usb_device_ctx->dev_handle,
> +						  endpoint_ctx->ep_handle);
> +
> +	mausb_pr_info("epinactivate request ep_handle=%#x, dev_handle=%#x, status=%d",
> +		       endpoint_ctx->ep_handle, endpoint_ctx->dev_handle,
> +		       status);
> +
> +	while (true) {
> +		status = mausb_epdelete_event_to_user(ma_dev,
> +						usb_device_ctx->dev_handle,
> +						endpoint_ctx->ep_handle);
> +
> +		mausb_pr_info("ep_handle_delete_request, ep_handle=%#x, dev_handle=%#x, status=%d",
> +			      endpoint_ctx->ep_handle, endpoint_ctx->dev_handle,
> +			      status);
> +		/* sleep for 10 ms to give device some time */
                ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Delete this an just put 10ms in the usleep_range() parameters.  Ideally
code should document itself.

> +		if (status == -EBUSY) {
> +			if (++retries < MAUSB_BUSY_RETRIES_COUNT)
> +				usleep_range(MAUSB_BUSY_TIMEOUT_MIN,
> +					MAUSB_BUSY_TIMEOUT_MAX);

Delete the MAUSB_BUSY_TIMEOUT_MIN defines.

> +			else
> +				return status;

return -EBUSY.  There are a bunch of places which "return status;"
that should be updated to "return 0;" etc.

> +		} else {
> +			break;
> +		}
> +	}
> +
> +	mausb_pr_info("Endpoint dropped ep_handle=%#x, dev_handle=%#x",
> +		      endpoint_ctx->ep_handle, endpoint_ctx->dev_handle);
> +
> +	endpoint->hcpriv = NULL;
> +	kfree(endpoint_ctx);
> +	return status;
> +}
> +

[ snip ]

> +	if (unlikely(dev_speed == -EINVAL)) {
> +		mausb_pr_err("bad dev_speed");
> +		return -EINVAL;
> +	}

Remove all the likely()/unlikely().  Those only belong in core kernel,
not in drivers.  Search and delete.

	if (dev_speed < 0)
		return dev_speed;


[ snip ]

> +	if (!usb_device_ctx ||
> +		usb_device_ctx->dev_handle == DEV_HANDLE_NOT_ASSIGNED)
> +		return 0;

Align conditions like this:

	if (!usb_device_ctx ||
	    usb_device_ctx->dev_handle == DEV_HANDLE_NOT_ASSIGNED)
		return 0;

> +#ifdef ISOCH_CALLBACKS
> +int mausb_sec_event_ring_setup(struct usb_hcd *hcd, unsigned int intr_num)
> +{
> +	mausb_pr_debug("");
> +	return 0;
> +}


If possible, let's delete all the dummy functions.


> +	if (mausb_isoch_data_event(event))
> +		if (event->data.direction == MAUSB_DATA_MSG_DIRECTION_IN)
> +			status = mausb_receive_isoch_in_data(dev, event,
> +							     urb_ctx);
> +		else
> +			status = mausb_receive_isoch_out(dev, event, urb_ctx);
> +	else
> +		if (event->data.direction == MAUSB_DATA_MSG_DIRECTION_IN)
> +			status = mausb_receive_in_data(dev, event, urb_ctx);
> +		else
> +			status = mausb_receive_out_data(dev, event, urb_ctx);


Multi-line indent blocks get curly braces for readability.


> +static int mausb_init_header_data_chunk(struct ma_usb_hdr_common *common_hdr,
> +					struct list_head *chunks_list,
> +					uint32_t *num_of_data_chunks)
> +{
> +	int status = mausb_add_data_chunk(common_hdr,
> +					  MAUSB_TRANSFER_HDR_SIZE,
> +					  chunks_list);
> +	/* Success */
> +	if (!status)
> +		++(*num_of_data_chunks);
> +
> +	return status;
> +}

When you need comments to explain the success path it means the code
is messy.  The success path should be at indent level one tab and the
failure path should be indented two tabs.  Always do "failure handling",
not "success handling" like this.

	int status;

	status = mausb_add_data_chunk(common_hdr, MAUSB_TRANSFER_HDR_SIZE,
				      chunks_list);
	if (status)
		return status;

	++(*num_of_data_chunks);

	return 0;

> +static int mausb_init_control_data_chunk(struct mausb_event *event,
> +				  struct list_head *chunks_list,
> +				  uint32_t *num_of_data_chunks)
> +{
> +	int status = 0;
> +
> +	if (!event->data.first_control_packet)
> +		goto l_return;

Just do a direct return.  This do-nothing goto is pointless.  What does
the l in l_return even mean?  It's confusing to the readers because is
this really supposed to be a success path?

	if (!event->data.first_control_packet)
		return 0;

A "return 0;" is clearly intentional and instantly clear.

> +
> +	status = mausb_add_data_chunk(
> +				((struct urb *)event->data.urb)->setup_packet,
> +				MAUSB_CONTROL_SETUP_SIZE, chunks_list);
> +	/* Success */
> +	if (!status)
> +		++(*num_of_data_chunks);
> +
> +l_return:
> +	return status;
> +}

Anyway, run it through checkpatch and resend, then I look at it
properly.

regards,
dan carpenter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
