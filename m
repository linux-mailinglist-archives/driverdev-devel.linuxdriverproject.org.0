Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 849A41D980D
	for <lists+driverdev-devel@lfdr.de>; Tue, 19 May 2020 15:42:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 80907228EB;
	Tue, 19 May 2020 13:42:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fY-WHAq9n2Uz; Tue, 19 May 2020 13:42:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1EAB822128;
	Tue, 19 May 2020 13:42:51 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A1E251BF97D
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 19 May 2020 13:42:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9C3BD88262
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 19 May 2020 13:42:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2pAJP-TP3pSn
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 19 May 2020 13:42:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1BB4E84E27
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 19 May 2020 13:42:48 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04JDfecE084204;
 Tue, 19 May 2020 13:42:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=vlMDjmc1CBjXB6CRCEZCjJA7tdeu6QXrADwnz3NFtQ0=;
 b=TTf+mnrNV/UIMbqWELZ0/oEoXVtVK/7HMPUgEn8sHGXtItNw6xsVZPjsQ5BvQJ9IAOZG
 AqfqZeDXu6aqxzzqgL9je/+9pyPocdYsAxe6sF7YP7Xjf/XDB0cD+RG/3o/02XyoLP03
 jrGgLHTNdYZyxB5TjF26/KyXBGWTClV1/h1biReBjnQi9Zou52Wn5apA+2664m4zZ/U2
 e4i1N4hETb2JLAqv0V3gi/YGDpy43m2CQTk/rX7VoAgXVrlBdloW8pM/kpdy+js06fX+
 zX2SOkwKb+7SLGTCjox9TVYbYjpXQVJxbp0tXpzahLvJcl0y1fPQi75YTv1n7G5/rldW FQ== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2130.oracle.com with ESMTP id 3127kr5fg0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 19 May 2020 13:42:47 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04JDcN4B021965;
 Tue, 19 May 2020 13:42:46 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3030.oracle.com with ESMTP id 312t3y1pma-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 19 May 2020 13:42:46 +0000
Received: from abhmp0013.oracle.com (abhmp0013.oracle.com [141.146.116.19])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 04JDgj0Q022882;
 Tue, 19 May 2020 13:42:45 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 19 May 2020 06:42:45 -0700
Date: Tue, 19 May 2020 16:42:39 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Christian Gromm <christian.gromm@microchip.com>
Subject: Re: [PATCH v2 2/8] drivers: most: usb: use dev_*() functions to
 print messages
Message-ID: <20200519134239.GP2078@kadam>
References: <1589449976-11378-1-git-send-email-christian.gromm@microchip.com>
 <1589449976-11378-3-git-send-email-christian.gromm@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1589449976-11378-3-git-send-email-christian.gromm@microchip.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9625
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 adultscore=0
 phishscore=0 bulkscore=0 suspectscore=0 mlxscore=0 spamscore=0
 mlxlogscore=999 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2005190122
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9625
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 phishscore=0 spamscore=0
 bulkscore=0 clxscore=1011 priorityscore=1501 mlxscore=0 impostorscore=0
 suspectscore=0 mlxlogscore=999 malwarescore=0 cotscore=-2147483648
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2005190122
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
Cc: gregkh@linuxfoundation.org, driverdev-devel@linuxdriverproject.org,
 linux-usb@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, May 14, 2020 at 11:52:50AM +0200, Christian Gromm wrote:
> @@ -186,13 +185,14 @@ static inline int start_sync_ep(struct usb_device *usb_dev, u16 ep)
>   * get_stream_frame_size - calculate frame size of current configuration
>   * @cfg: channel configuration
>   */
> -static unsigned int get_stream_frame_size(struct most_channel_config *cfg)
> +static unsigned int get_stream_frame_size(struct most_channel_config *cfg,
> +					  struct device *dev)

I feel like normally "dev" would be the first pointer instead of the
second.  It goes from permanent --> temporary.  Central --> outer.

That rule of thumb basically works for this file.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
