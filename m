Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F3E7730EE5
	for <lists+driverdev-devel@lfdr.de>; Fri, 31 May 2019 15:31:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F0431855CF;
	Fri, 31 May 2019 13:31:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id blIWFVj28zXL; Fri, 31 May 2019 13:31:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BCC4184497;
	Fri, 31 May 2019 13:31:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EF3F91BF29E
 for <devel@linuxdriverproject.org>; Fri, 31 May 2019 13:31:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id EA48C8493F
 for <devel@linuxdriverproject.org>; Fri, 31 May 2019 13:31:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Uz58fDuKqetf for <devel@linuxdriverproject.org>;
 Fri, 31 May 2019 13:31:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B5F1484B88
 for <devel@driverdev.osuosl.org>; Fri, 31 May 2019 13:31:42 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4VDNQYu041473;
 Fri, 31 May 2019 13:31:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2018-07-02;
 bh=0Pb+9bAmSfuo0G6M0SFQAFdEYxAVKO5NFrhx83VLndc=;
 b=Eneutn7oWksclz7rOTEvwJAO0C9V/sg1kp88WXETStRZwtT+VkcpRssNKomPSPaLmwFo
 dOLbuwGSlAeXoYl+XCalDCgAkIfD2RLqxR2xanQylWpGTZGlyqdpberAPgs9H+/U5xD+
 F5SAAOVS+kU2BSozbQFtcAtDB6hweWWrMqehPrOTR1tGc46aRI+z7K39eHUqLybZv3xb
 PaVD2cVW4ka8/+Uj1dxhA2I6VRtw3bAnkVoSk9GGIfRwc59tqhgBwqhlZyOdjF3fbR0f
 3Mgxw6LL8R+cGjGRaMjk+rMGaP66IEPdxMh7r+u4Eg/onUT13JopTLIjUEW1dQ902lUy bg== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2130.oracle.com with ESMTP id 2spw4tx8jy-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 31 May 2019 13:31:40 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4VDTvZF101097;
 Fri, 31 May 2019 13:31:39 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3030.oracle.com with ESMTP id 2su3y497kk-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 31 May 2019 13:31:39 +0000
Received: from abhmp0003.oracle.com (abhmp0003.oracle.com [141.146.116.9])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x4VDVWQf013237;
 Fri, 31 May 2019 13:31:32 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 31 May 2019 06:31:32 -0700
Date: Fri, 31 May 2019 16:31:22 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Nishka Dasgupta <nishkadg.linux@gmail.com>
Subject: Re: [PATCH] staging: comedi: Remove variable runflags
Message-ID: <20190531133122.GF31203@kadam>
References: <20190530205131.29955-1-nishkadg.linux@gmail.com>
 <8292224d-9c4a-d29e-4a86-d3352fcd2be1@mev.co.uk>
 <ceb54997-3057-81df-f3f0-e04b36e950c4@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ceb54997-3057-81df-f3f0-e04b36e950c4@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9273
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=806
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1905310086
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9273
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=860 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1905310086
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
Cc: devel@driverdev.osuosl.org, kas.sandesh@gmail.com, nishadkamdar@gmail.com,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 Ian Abbott <abbotti@mev.co.uk>, olsonse@umich.edu, jkhasdev@gmail.com,
 giulio.benetti@micronovasrl.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Anyway, Greg was never going to apply this so it's not worth worrying
about too much.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
