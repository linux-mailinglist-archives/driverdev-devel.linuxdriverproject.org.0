Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 00E3986179
	for <lists+driverdev-devel@lfdr.de>; Thu,  8 Aug 2019 14:17:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9899987430;
	Thu,  8 Aug 2019 12:17:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MMcfdSDTIr-Q; Thu,  8 Aug 2019 12:17:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 723AA86A40;
	Thu,  8 Aug 2019 12:17:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 427331BF3FD
 for <devel@linuxdriverproject.org>; Thu,  8 Aug 2019 12:17:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3CC8A880D4
 for <devel@linuxdriverproject.org>; Thu,  8 Aug 2019 12:17:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iNKhZ3VOtJ6a for <devel@linuxdriverproject.org>;
 Thu,  8 Aug 2019 12:17:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by hemlock.osuosl.org (Postfix) with ESMTPS id BB9FD87D9C
 for <devel@driverdev.osuosl.org>; Thu,  8 Aug 2019 12:17:22 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x78CDxPF135037;
 Thu, 8 Aug 2019 12:17:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=vMrJ91GMO1CD+aMStdBznA5LKGeM9s5PCFnZKiLM6Zg=;
 b=fvtvz7yl7UyjrCq3AXhqEIjYIs0GQKXpOb2BoucaemYDTCVbTnN2E5xz6KdxuDQEl60G
 mMbKhKN/hnWOHtrM0gHaFA6Wd3vAwWqyytfIbTn102Bd6HFUav2CNwIbmjPl4ajCmkBX
 7VrR3E6rZWg5TWA1qZuPBG2XkmQrxwehoc4pwe01SuGIPtMEhv6Sv2wJ/xOPfS/Lwj/N
 3Ipuc73oAsf4pSJittoeCi6NSDGdsvNv6aFROpPqzA9C/HD0T1iO1VkxeQr/zeKccBxp
 8F0W99uZ5+mkDSYY18Mqbc7XA0AMmzunU8DOlt6fQEHd9ORDj5V/PdPwBeLc+idppIRu yQ== 
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2018-07-02;
 bh=vMrJ91GMO1CD+aMStdBznA5LKGeM9s5PCFnZKiLM6Zg=;
 b=JT9U3BQYkriAIpYP1ep4QamFrVZ8BD+tt9efJ8BtElm+m4Bv/Jz8zOr7r/AvTrYNH78d
 PNKOn/smvSXDE2/uB9pbTOfijXsSGPBPhYSOrU0PvttXk9DHo00hyNehlb2eEmYWeXaJ
 BwpK0hgLLSeOKmPLk2Gam+GvXp6mnMXomt6bxmb1dWfmMEIp1yvCTAzXUnDM7bnP+LhE
 XcMMfE0PmV2HyLBT6GPz8O08QoO9IFIDjVAxJEAMwjsSdrhYo8OX0TPh8c3ew5tJbnb9
 2x3SnaF4sMigMcu2NOuMxSzgWvF1DQKjGvLsqWvOfDAu2eSwhHy2t1XEWhTHIJNzlfiz JA== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2120.oracle.com with ESMTP id 2u8hgp0srj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 08 Aug 2019 12:17:20 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x78CChev069593;
 Thu, 8 Aug 2019 12:17:19 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3030.oracle.com with ESMTP id 2u75bxked5-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 08 Aug 2019 12:17:19 +0000
Received: from abhmp0003.oracle.com (abhmp0003.oracle.com [141.146.116.9])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x78CHI0r001460;
 Thu, 8 Aug 2019 12:17:18 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 08 Aug 2019 05:17:17 -0700
Date: Thu, 8 Aug 2019 15:17:08 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Nishka Dasgupta <nishkadg.linux@gmail.com>
Subject: Re: [PATCH 10/10] staging: rtl8712: r8712_xmit_classifier(): Change
 return values and type
Message-ID: <20190808121708.GP1974@kadam>
References: <20190808064012.12661-1-nishkadg.linux@gmail.com>
 <20190808064012.12661-10-nishkadg.linux@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190808064012.12661-10-nishkadg.linux@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9342
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1906280000 definitions=main-1908080129
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9342
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1906280000
 definitions=main-1908080129
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
Cc: devel@driverdev.osuosl.org, florian.c.schilhabel@googlemail.com,
 gregkh@linuxfoundation.org, larry.finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Looks good to me.

Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
