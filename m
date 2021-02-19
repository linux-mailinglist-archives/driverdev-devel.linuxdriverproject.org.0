Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1106C31F53D
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Feb 2021 07:55:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id ECF6D86FFB;
	Fri, 19 Feb 2021 06:55:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Bupm+n5qzuvg; Fri, 19 Feb 2021 06:55:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E8D4386FA7;
	Fri, 19 Feb 2021 06:55:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3CD141BF368
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 06:55:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 399F786B0E
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 06:55:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id agXpOUyzRql7 for <devel@linuxdriverproject.org>;
 Fri, 19 Feb 2021 06:55:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9E51186978
 for <devel@driverdev.osuosl.org>; Fri, 19 Feb 2021 06:55:25 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 11J6sg9D185063;
 Fri, 19 Feb 2021 06:55:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=Go6tYAvLQ82oAZm5BANsgOmrCr9tlT6pOAyjkofCBIU=;
 b=Xl9C0ymufrJ1ihTm8RRtsV/tzWWFdcvYrJnkKtvVLxI+mVS0/a6VUXI0pQsBSRR3cfzt
 oNPau9ZpBAWqyzY3/gsvh066Gg9fmXu4dM+Tp/Bp8pbIyzwgd+W5jfc+LV9eCQcEjkqq
 28LEltCR8ydP1QORf8Ba0sF2ctpCOyUdfR8BwKQd/zC6Mme206JAfLoaSGxkWXGVnodo
 n6Brm0n05K4X8Cxw0ny4AJ/wQ2hgEuq3/l33Y4ZFpDqZuFqrVh7AbEkZOEpdlfe4Wbv/
 gFytw5ULZPb2KiXMnk5XKp+wjFyfOttoRGbu/x6DAzVoUfVFvdxChm3nBj0nfgJUIS70 eQ== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by aserp2120.oracle.com with ESMTP id 36pd9afxx5-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 19 Feb 2021 06:55:24 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 11J6jkYK068090;
 Fri, 19 Feb 2021 06:55:22 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3020.oracle.com with ESMTP id 36prhv9tw6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 19 Feb 2021 06:55:22 +0000
Received: from abhmp0009.oracle.com (abhmp0009.oracle.com [141.146.116.15])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 11J6tLuT021888;
 Fri, 19 Feb 2021 06:55:22 GMT
Received: from kadam (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 18 Feb 2021 22:55:21 -0800
Date: Fri, 19 Feb 2021 09:55:14 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Atul Gopinathan <atulgopinathan@gmail.com>
Subject: Re: [PATCH v2 1/2] staging: comedi: cast function output to assigned
 variable type
Message-ID: <20210219065514.GN2222@kadam>
References: <20210218084404.16591-1-atulgopinathan@gmail.com>
 <8f73b7a1-02dd-32ef-8115-ad0f38868692@mev.co.uk>
 <20210218104755.GA7571@atulu-nitro> <YC5bsXa+1KSuIh+v@kroah.com>
 <20210218125220.GA19456@atulu-nitro> <20210218155159.GL2087@kadam>
 <20210218164128.GA9289@atulu-nitro>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210218164128.GA9289@atulu-nitro>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-IMR: 1
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9899
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 adultscore=0 mlxscore=0
 bulkscore=0 suspectscore=0 malwarescore=0 spamscore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2102190049
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9899
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 clxscore=1015
 impostorscore=0
 mlxscore=0 phishscore=0 mlxlogscore=999 spamscore=0 bulkscore=0
 priorityscore=1501 malwarescore=0 suspectscore=0 adultscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2102190050
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
Cc: devel@driverdev.osuosl.org, Greg KH <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

No problem.  These days I have fibre to my house, but I still remember
trying to clone the kernel when I could only buy 20MB of data at a
time.  :P

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
