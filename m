Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8688120AE71
	for <lists+driverdev-devel@lfdr.de>; Fri, 26 Jun 2020 10:34:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 620BE88455;
	Fri, 26 Jun 2020 08:34:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YHV+53Ihrs+L; Fri, 26 Jun 2020 08:34:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5C8008840C;
	Fri, 26 Jun 2020 08:34:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D40AA1BF2A5
 for <devel@linuxdriverproject.org>; Fri, 26 Jun 2020 08:34:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D075886C1E
 for <devel@linuxdriverproject.org>; Fri, 26 Jun 2020 08:34:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id N2hitkRIYasp for <devel@linuxdriverproject.org>;
 Fri, 26 Jun 2020 08:34:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A48A586C11
 for <devel@driverdev.osuosl.org>; Fri, 26 Jun 2020 08:34:47 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05Q8S7xw134511;
 Fri, 26 Jun 2020 08:34:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=fjqGH22vN8tmHJC5Ez+rpYalehtYxTKAP/PTFFOVU+A=;
 b=QPuSTCPUBeUywJ4cdRVBcX4j4qAoWBQytlLuZdN8MuV+SPw1Pi89PDGBSLyyDKjhyR2m
 L82kVyC4OqKWbbN2mH97QSXn6bVN/zrkmZboSY4/2cRKkHljjfKkWr3zq9bDGGAGlURz
 PBokYIZZsnNwwLnsg7DqOOob7KkSmJPknzjAbTLpJivOdT26/sxOL2o+dGxTVxrTdlIe
 M7sxDkAy8hM6c52o5QOeAoPToT1B7eCWVjSg3NxxPukODuVkVCecOGTpBSeieBUuernO
 6ynvVrBtNdIAqal3L2QmAfCAdG1c138nJ28JSt7EL9fhrLWlclDFbbb9Y13wWVQoR4Cs GQ== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by aserp2120.oracle.com with ESMTP id 31uusu4ufe-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 26 Jun 2020 08:34:46 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05Q8YKSl009278;
 Fri, 26 Jun 2020 08:34:46 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3020.oracle.com with ESMTP id 31uurbp4bd-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 26 Jun 2020 08:34:46 +0000
Received: from abhmp0001.oracle.com (abhmp0001.oracle.com [141.146.116.7])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 05Q8YhU9017943;
 Fri, 26 Jun 2020 08:34:43 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 26 Jun 2020 08:34:43 +0000
Date: Fri, 26 Jun 2020 11:34:36 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Coiby Xu <coiby.xu@gmail.com>
Subject: Re: [PATCH 2/2] staging: qlge: fix else after return or break
Message-ID: <20200626083436.GG2549@kadam>
References: <20200625215755.70329-1-coiby.xu@gmail.com>
 <20200625215755.70329-3-coiby.xu@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200625215755.70329-3-coiby.xu@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9663
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 spamscore=0 adultscore=0
 malwarescore=0 mlxscore=0 mlxlogscore=999 phishscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2006260062
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9663
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 bulkscore=0
 cotscore=-2147483648 malwarescore=0 mlxscore=0 clxscore=1015
 lowpriorityscore=0 mlxlogscore=999 phishscore=0 priorityscore=1501
 spamscore=0 impostorscore=0 adultscore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2006260061
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
Cc: devel@driverdev.osuosl.org, "supporter:QLOGIC QLGE 10Gb ETHERNET DRIVER"
 <GR-Linux-NIC-Dev@marvell.com>, Manish Chopra <manishc@marvell.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 open list <linux-kernel@vger.kernel.org>,
 "open list:QLOGIC QLGE 10Gb ETHERNET DRIVER" <netdev@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Jun 26, 2020 at 05:57:55AM +0800, Coiby Xu wrote:
> @@ -1404,11 +1403,10 @@ static void ql_dump_cam_entries(struct ql_adapter *qdev)
>  			pr_err("%s: Failed read of mac index register\n",
>  			       __func__);
>  			return;
                        ^^^^^^
> -		} else {
> -			if (value[0])
> -				pr_err("%s: MCAST index %d CAM Lookup Lower = 0x%.08x:%.08x\n",
> -				       qdev->ndev->name, i, value[1], value[0]);
>  		}
> +		if (value[0])
> +			pr_err("%s: MCAST index %d CAM Lookup Lower = 0x%.08x:%.08x\n",
> +			       qdev->ndev->name, i, value[1], value[0]);
>  	}
>  	ql_sem_unlock(qdev, SEM_MAC_ADDR_MASK);
        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
>  }
> @@ -1427,11 +1425,10 @@ void ql_dump_routing_entries(struct ql_adapter *qdev)
>  			pr_err("%s: Failed read of routing index register\n",
>  			       __func__);
>  			return;
                        ^^^^^^


> -		} else {
> -			if (value)
> -				pr_err("%s: Routing Mask %d = 0x%.08x\n",
> -				       qdev->ndev->name, i, value);
>  		}
> +		if (value)
> +			pr_err("%s: Routing Mask %d = 0x%.08x\n",
> +			       qdev->ndev->name, i, value);
>  	}
>  	ql_sem_unlock(qdev, SEM_RT_IDX_MASK);
        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
>  }

This is not caused by your patch, but in these two functions we return
without dropping the lock.  There may be other places as well, but these
are the two I can see without leaving my email client.

Do you think you could fix that before we forget?  Just change the
return to a break to fix the bug.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
