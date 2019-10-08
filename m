Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 693C2CF94E
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Oct 2019 14:08:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3E3E28768C;
	Tue,  8 Oct 2019 12:08:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6sznM3Y14gnm; Tue,  8 Oct 2019 12:08:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C662D87635;
	Tue,  8 Oct 2019 12:08:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E54D51BF35A
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 12:07:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E12AE86109
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 12:07:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HKwUK63PTQUt for <devel@linuxdriverproject.org>;
 Tue,  8 Oct 2019 12:07:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 988F0860F2
 for <devel@driverdev.osuosl.org>; Tue,  8 Oct 2019 12:07:58 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x98C44fR110712;
 Tue, 8 Oct 2019 12:07:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=TmaPSvdLAAUjYycK4fTb+QYPszkTpvdMZGFtiACntoM=;
 b=XqWFclf1lZMoy0jmXDUtiLEMRFE1+Q3zUx6XXoqvGz7wkIOWZWQzVZsev519bWaIVyQd
 RnIOQvKPXcON5u7i6G8pmXEwXBtJTVzZOaph8iORMOwFb9g4ozSS36D2aZBcgoaQMori
 6fur+kvxL7eW4B/GH0oxS5q5GH+zoahiaJJLUYXcedIU5VDs0Ph6D7nStiwQ+h4glxhs
 Jdj6nU0xJ0LhrZQdsRFHWuU43KNrMhoplcI4mf5flPrkfaaN8dMK1r5QK/peEgEzRF67
 Cy84SbyY2PtHb69i0BzsVRw3ohSupCyJoI0GtyRSk3nJRHPKwySdynL3ZKYYYcNWzTw0 uw== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by aserp2120.oracle.com with ESMTP id 2vek4qctby-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 08 Oct 2019 12:07:57 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x98C7riF131307;
 Tue, 8 Oct 2019 12:07:57 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3020.oracle.com with ESMTP id 2vgefagb3u-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 08 Oct 2019 12:07:57 +0000
Received: from abhmp0013.oracle.com (abhmp0013.oracle.com [141.146.116.19])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x98C7uD6004566;
 Tue, 8 Oct 2019 12:07:56 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 08 Oct 2019 05:07:55 -0700
Date: Tue, 8 Oct 2019 15:07:49 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Jerome Pouiller <Jerome.Pouiller@silabs.com>
Subject: Re: [PATCH 6/7] staging: wfx: drop calls to BUG_ON()
Message-ID: <20191008120749.GG25098@kadam>
References: <20191008094232.10014-1-Jerome.Pouiller@silabs.com>
 <20191008094232.10014-7-Jerome.Pouiller@silabs.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191008094232.10014-7-Jerome.Pouiller@silabs.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9403
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=960
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910080119
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9403
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910080118
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Andrew Lunn <andrew@lunn.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Oct 08, 2019 at 09:43:01AM +0000, Jerome Pouiller wrote:
> @@ -56,9 +56,9 @@ static uint8_t fill_tkip_pair(struct hif_tkip_pairwise_key *msg,
>  {
>  	uint8_t *keybuf = key->key;
>  
> -	WARN_ON(key->keylen != sizeof(msg->tkip_key_data)
> -			       + sizeof(msg->tx_mic_key)
> -			       + sizeof(msg->rx_mic_key));
> +	WARN(key->keylen != sizeof(msg->tkip_key_data)
> +			    + sizeof(msg->tx_mic_key)
> +			    + sizeof(msg->rx_mic_key), "inconsistent data");

This is not a comment on the patch since the code was like that
originally, but the " +" should go of the first line:

	WARN(key->keylen != sizeof(msg->tkip_key_data) +
			    sizeof(msg->tx_mic_key) +
			    sizeof(msg->rx_mic_key),
	     "inconsistent data");

That doesn't look too good still...  The error message is sort of
rubbish also.  Anyway the operator goes on the first line.

regards,
dan carpenter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
