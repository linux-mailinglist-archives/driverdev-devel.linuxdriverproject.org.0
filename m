Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9722D14380D
	for <lists+driverdev-devel@lfdr.de>; Tue, 21 Jan 2020 09:09:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BC7F38272B;
	Tue, 21 Jan 2020 08:09:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TaaB2JURI1Yc; Tue, 21 Jan 2020 08:09:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E3BC681B73;
	Tue, 21 Jan 2020 08:08:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 08BB61BF37F
 for <devel@linuxdriverproject.org>; Tue, 21 Jan 2020 08:08:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0232A85EAC
 for <devel@linuxdriverproject.org>; Tue, 21 Jan 2020 08:08:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c4t9zFyMBgIe for <devel@linuxdriverproject.org>;
 Tue, 21 Jan 2020 08:08:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2AA9985EA4
 for <devel@driverdev.osuosl.org>; Tue, 21 Jan 2020 08:08:42 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00L88bcl012886;
 Tue, 21 Jan 2020 08:08:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=JokcTFeEjvvq9Vxxb4wYvQgUwTXVTIvxWBKr0alh1Jc=;
 b=YxB/bbIrZAJGeDGXg+zMWRsC40uHGOzqMvZVCRwlBNsCG1ixv2mFPW+h1xjHN3+Ib+x9
 3FiELGyRhB4zAfSqmu88OxOqPTu3pzd8PkGUOOesvjwwaBpPDSxLxUxLTlm8IjlAD0hZ
 SJmQfsdOqcM+czuehY6jeCvdCkXZlCTn/14u9tXri0LfPZCirOPrkItt/IFbkr43fhbs
 m7YbR4KUqFj9ggIY5wr1gh5lyeEjn4YB1wwATuf5iZmi43ZrRHpzh5RrtszYUrLrGi4k
 G3eRXvenJcJCcmEfszq7SmuNSuRthRQ5HMFlfLe6hUR9bc9rBOakjwJF71U1kMvmpCUN TA== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2120.oracle.com with ESMTP id 2xksyq36ef-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 21 Jan 2020 08:08:37 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00L88Fqo074370;
 Tue, 21 Jan 2020 08:08:37 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3030.oracle.com with ESMTP id 2xnpfnhqpf-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 21 Jan 2020 08:08:37 +0000
Received: from abhmp0015.oracle.com (abhmp0015.oracle.com [141.146.116.21])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 00L88aYj018372;
 Tue, 21 Jan 2020 08:08:36 GMT
Received: from kadam (/129.205.23.165) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 21 Jan 2020 00:08:35 -0800
Date: Tue, 21 Jan 2020 11:13:06 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Vladimir Stankovic <vladimir.stankovic@displaylink.com>
Subject: Re: staging: Add MA USB Host driver
Message-ID: <20200121081306.GG21151@kadam>
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
 engine=8.0.1-1911140001 definitions=main-2001210069
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9506
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-2001210069
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

On Mon, Jan 20, 2020 at 09:30:43AM +0000, Vladimir Stankovic wrote:
> +int mausb_enqueue_event_from_user(uint8_t madev_addr, uint32_t all_events)
> +{
> +	unsigned long flags;
> +	uint16_t num_of_completed,
> +		 num_of_events;
> +	struct mausb_device *dev;
> +
> +	spin_lock_irqsave(&mss.lock, flags);
> +	dev = mausb_get_dev_from_addr_unsafe(madev_addr);
> +
> +	if (!dev) {
> +		spin_unlock_irqrestore(&mss.lock, flags);
> +		return 0;
> +	}
> +
> +	spin_lock_irqsave(&dev->num_of_user_events_lock, flags);
> +	num_of_completed = (uint16_t)all_events +
> +			   (uint16_t)dev->num_of_user_events;
> +	num_of_events	 = (all_events >> (8 * sizeof(num_of_events))) +
> +		(dev->num_of_user_events >> (8 * sizeof(num_of_events)));
> +	dev->num_of_user_events  = num_of_completed;
> +	dev->num_of_user_events |= (uint32_t)num_of_events <<
> +		(8 * sizeof(num_of_events));

I might be missing something.  Why can't we just declare two struct
members instead of doing these bit shifts to fit two values into
dev->num_of_user_events?

> +	spin_unlock_irqrestore(&dev->num_of_user_events_lock, flags);
> +	queue_work(dev->workq, &dev->work);
> +	spin_unlock_irqrestore(&mss.lock, flags);
> +
> +	return 0;
> +}

regards,
dan carpenter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
