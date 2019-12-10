Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DC5F118A7A
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Dec 2019 15:10:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1371187729;
	Tue, 10 Dec 2019 14:10:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7oh1doYXSEzy; Tue, 10 Dec 2019 14:10:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0301A86FC1;
	Tue, 10 Dec 2019 14:10:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id ECF191BF3AB
 for <devel@linuxdriverproject.org>; Tue, 10 Dec 2019 14:10:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E5D5D85F0F
 for <devel@linuxdriverproject.org>; Tue, 10 Dec 2019 14:10:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QbCVXwcNDIJa for <devel@linuxdriverproject.org>;
 Tue, 10 Dec 2019 14:10:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 32B9D86A90
 for <devel@driverdev.osuosl.org>; Tue, 10 Dec 2019 14:10:20 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xBAEA807104772;
 Tue, 10 Dec 2019 14:10:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=LdaSajcXZ2bmqI7ZVRWBI/ze+xHJoZFpfPGLg+Jmk3Y=;
 b=mnOh3sYhJV3ELlv7UgWnb01eqFyR8BRZHYDPSHLKdNHDh0/gmo3R38aem4WP7mcEvBSI
 4/RPi7icYcg1u+RtMLr0LM1SWPQT/ZEXBbE9WHCbUP9CMvZf+hDbP8aLQXZrRBSlLvm3
 TiqJyYh47bu4TyzjL8MjJM4TSyuvlBphcHDF2KtXGo2wLK8P0UY2jyV8jyEeGzvmT8+i
 1kROJCLIRfJA/ggbtxAsCoAjEv+PI1CF8mKXguhBKEN889fWAzjnY756WPWJm/RnTwFH
 hWb1PbMotETYZby4aFbxPVxXnto/yXmLO/reGohoLQzMy5YqtIhXWdLg8rtlBQZojXBy jw== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2130.oracle.com with ESMTP id 2wrw4n36u3-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 10 Dec 2019 14:10:18 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xBAE9TUo138030;
 Tue, 10 Dec 2019 14:10:17 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3030.oracle.com with ESMTP id 2wsv8buc2m-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 10 Dec 2019 14:10:17 +0000
Received: from abhmp0001.oracle.com (abhmp0001.oracle.com [141.146.116.7])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id xBAEA5wF010544;
 Tue, 10 Dec 2019 14:10:05 GMT
Received: from kadam (/129.205.23.165) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 10 Dec 2019 06:10:05 -0800
Date: Tue, 10 Dec 2019 17:09:58 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Sven Leykauf <sven_leykauf1@web.de>
Subject: Re: [PATCH 1/3] sm750fb: Fix Avoid CamelCase
Message-ID: <20191210140958.GA2070@kadam>
References: <20191208132852.1557-1-sven_leykauf1@web.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191208132852.1557-1-sven_leykauf1@web.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9466
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=856
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-1912100123
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9466
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=921 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-1912100123
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
Cc: devel@driverdev.osuosl.org, Daniel Bauer <daniel.j.bauer@fau.de>,
 linux-kernel@i4.cs.fau.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Dec 08, 2019 at 02:28:53PM +0100, Sven Leykauf wrote:
>  /*
> - *  sii164GetDeviceID
> + *  sii164_get_gevice_id

"device" instead of "gevice".

regards,
dan capenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
