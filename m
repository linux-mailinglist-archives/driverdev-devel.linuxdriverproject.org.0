Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02F40831BA
	for <lists+driverdev-devel@lfdr.de>; Tue,  6 Aug 2019 14:47:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B2F0C85F8E;
	Tue,  6 Aug 2019 12:47:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nuyiaqHCLNmh; Tue,  6 Aug 2019 12:47:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 175C185EF2;
	Tue,  6 Aug 2019 12:47:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2F2471BF5F4
 for <devel@linuxdriverproject.org>; Tue,  6 Aug 2019 12:47:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 294DA8657C
 for <devel@linuxdriverproject.org>; Tue,  6 Aug 2019 12:47:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id X2gCSOz5NunD for <devel@linuxdriverproject.org>;
 Tue,  6 Aug 2019 12:47:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 80BFF8656A
 for <devel@driverdev.osuosl.org>; Tue,  6 Aug 2019 12:47:07 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x76CiuQD047597;
 Tue, 6 Aug 2019 12:47:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2018-07-02;
 bh=NyO5dApascZ8/D8TXj1/JFR+0z2joZ19q2Ozs60B9p4=;
 b=tLISpKFR8T3qNpKNwLD81PwfIr3ka+1hm6TXr5gwIuDohjgBNG+OG2K04IA6AhMKUCeD
 CwZMeV+8gsqiuqxFPsbYZKEfvtf4jI+KRX7Xx4MUA3KDoLWtcfFoJmO+dcRz267pdyPK
 RAPS+I+nurFJqq/zAxAu8PcH4mDpG7aKwS8oMsk+UKdiM16zbNirNhOTdpEp4xPbB6Wb
 CEwgfCuNhnoxMFGPr4HkOy5g2eTvdgPuVQ5LKpYslHJYGkaiA+ANxCtlyXHNbwLyFyIU
 VxVI03TLTSPetDk/40aNYazpbIxAL2yhG3TKXGFv0lzcgO2ODcGjwYKv3Am90Uy1C3sz aw== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2120.oracle.com with ESMTP id 2u52wr5va8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 06 Aug 2019 12:47:06 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x76Ch9sn177267;
 Tue, 6 Aug 2019 12:47:05 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3030.oracle.com with ESMTP id 2u75bvfg5v-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 06 Aug 2019 12:47:05 +0000
Received: from abhmp0022.oracle.com (abhmp0022.oracle.com [141.146.116.28])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x76Cl35I000348;
 Tue, 6 Aug 2019 12:47:03 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 06 Aug 2019 05:47:02 -0700
Date: Tue, 6 Aug 2019 15:46:56 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Adham.Abozaeid@microchip.com
Subject: Re: [PATCH 3/6] staging: wilc1000: remove unused members
Message-ID: <20190806124656.GH1974@kadam>
References: <20190725213125.2810-1-adham.abozaeid@microchip.com>
 <20190725213125.2810-4-adham.abozaeid@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190725213125.2810-4-adham.abozaeid@microchip.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9340
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=1
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=780
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1906280000 definitions=main-1908060127
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9340
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=1 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=848 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1906280000
 definitions=main-1908060127
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
 johannes@sipsolutions.net, linux-wireless@vger.kernel.org,
 Ajay.Kathat@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Jul 25, 2019 at 09:31:34PM +0000, Adham.Abozaeid@microchip.com wrote:
> From: Adham Abozaeid <adham.abozaeid@microchip.com>
> 
> remove obtaining_ip from struct wilc_vif
> 

How is this "unused"?  It looks like it is used to me.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
