Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 938EFBC1A0
	for <lists+driverdev-devel@lfdr.de>; Tue, 24 Sep 2019 08:15:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CCE0E8643F;
	Tue, 24 Sep 2019 06:15:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wVVKMShhiVCP; Tue, 24 Sep 2019 06:15:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A524C863E8;
	Tue, 24 Sep 2019 06:15:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6AA5D1BF29A
 for <devel@linuxdriverproject.org>; Tue, 24 Sep 2019 06:15:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6011486FCD
 for <devel@linuxdriverproject.org>; Tue, 24 Sep 2019 06:15:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id boq8VkY6zI9q for <devel@linuxdriverproject.org>;
 Tue, 24 Sep 2019 06:15:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by hemlock.osuosl.org (Postfix) with ESMTPS id BFE2C865F6
 for <devel@driverdev.osuosl.org>; Tue, 24 Sep 2019 06:15:29 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x8O6DsW8078787;
 Tue, 24 Sep 2019 06:15:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=63W63rUj8FUJMRRytvPvRJGqPus+X8Ahn8kyiIsIBq4=;
 b=OOMFiXpPYZdFlwg9TOygTePBX/c/cOLvDJ74B4cBvr0biOehWMaytKP1ZDKNfwP11F7x
 8+MYGZvr72C8d2CHwfdyXejp4fG5/FxpgJMVLhI8y5YMiTbLnlUYbUCm4bor/NKnqob5
 rTKqEHh782s9qmXQzseB6e6HaJohr/o1kVeire+hbsFRQ6YQFn5RA1Ak6YOFPW3ebXwg
 ja8HQOhcdQ1QPHW6erIiNRFsumnY0BjYxV9D1ulboRPoMeDVaviaHK7h0k+P1BH42Vmv
 1O9cvC5O4CkIEXyFAgaSzvXnHz0tNUCVQJrfT3rsqecyA/SmTNy300WcRPz0c8cxLWcn Mg== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2120.oracle.com with ESMTP id 2v5cgqukwc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 24 Sep 2019 06:15:27 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x8O6DRVS031126;
 Tue, 24 Sep 2019 06:15:26 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3020.oracle.com with ESMTP id 2v6yvr02cc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 24 Sep 2019 06:15:26 +0000
Received: from abhmp0014.oracle.com (abhmp0014.oracle.com [141.146.116.20])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x8O6FP0H002389;
 Tue, 24 Sep 2019 06:15:25 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 23 Sep 2019 23:15:24 -0700
Date: Tue, 24 Sep 2019 09:15:16 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Connor Kuehl <connor.kuehl@canonical.com>
Subject: Re: [PATCH] staging: rtl8188eu: remove dead code in do-while
 conditional step
Message-ID: <20190924061200.GK2959@kadam>
References: <20190923194806.25347-1-connor.kuehl@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190923194806.25347-1-connor.kuehl@canonical.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9389
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1909240063
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9389
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1909240063
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
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Sep 23, 2019 at 12:48:06PM -0700, Connor Kuehl wrote:
> @@ -103,7 +102,7 @@ static s32 FillH2CCmd_88E(struct adapter *adapt, u8 ElementID, u32 CmdLen, u8 *p
>  		adapt->HalData->LastHMEBoxNum =
>  			(h2c_box_num+1) % RTL88E_MAX_H2C_BOX_NUMS;
>  
> -	} while ((!bcmd_down) && (retry_cnts--));
> +	} while (!bcmd_down);

Just get rid of the whole do while loop, because it just goes through
one time.  It doesn't loop.   Get rid of bcmd_down as well.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
