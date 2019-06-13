Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BBFEF4342B
	for <lists+driverdev-devel@lfdr.de>; Thu, 13 Jun 2019 10:37:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DC09622730;
	Thu, 13 Jun 2019 08:37:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Pik1CqqON3Mo; Thu, 13 Jun 2019 08:37:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 02ED12150B;
	Thu, 13 Jun 2019 08:37:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 62E121BF575
 for <devel@linuxdriverproject.org>; Thu, 13 Jun 2019 08:37:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5F92887746
 for <devel@linuxdriverproject.org>; Thu, 13 Jun 2019 08:37:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xoaH4UCAym51 for <devel@linuxdriverproject.org>;
 Thu, 13 Jun 2019 08:37:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B849D87727
 for <devel@driverdev.osuosl.org>; Thu, 13 Jun 2019 08:37:22 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5D8T3Vm088523;
 Thu, 13 Jun 2019 08:37:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2018-07-02;
 bh=SsKfgl3JCtDv7WQVnvC0skVa8xOWteLtRtR24BTMv0M=;
 b=FMsG3yUNf2CQ5yogWo8Zduj6JaD6r4fGuSM4ULB05UJDytRTQU2HzWGSzcHE1QBvSk8S
 UChEDwspJjkksY3kQhP5ns/lWkhFPX1QhSSl9WUFNGNgmMXcihqtNtH5zbg67oyXzDox
 G5FghIyIOikHrAiu4cLDdU8uZ/ZUx+bFC7Eh+g/jAeB1pPqa0PR+W/4NTSsMBWlvitky
 0DlyP01xb6JE6jra2EBL+0l0E1Gbtj166JX4zJXkjB/jUAUKO2ItNrnC+vmkb2ckAmVs
 uIBB0HGMd6PlLS+2oThBmg+L6T99mDR9wc9eUBe/RLqezRNBYRGjKKnQpQ7J0GdK3zWw rw== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2130.oracle.com with ESMTP id 2t04eu04wv-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 13 Jun 2019 08:37:21 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5D8ZLVv043594;
 Thu, 13 Jun 2019 08:35:21 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3030.oracle.com with ESMTP id 2t024vd262-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 13 Jun 2019 08:35:21 +0000
Received: from abhmp0014.oracle.com (abhmp0014.oracle.com [141.146.116.20])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x5D8ZFSY009178;
 Thu, 13 Jun 2019 08:35:15 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 13 Jun 2019 01:35:15 -0700
Date: Thu, 13 Jun 2019 11:35:06 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Nishka Dasgupta <nishkadg.linux@gmail.com>
Subject: Re: [PATCH 01/11] staging: rtl8723bs: core: Remove function
 eeprom_read_sz()
Message-ID: <20190613083505.GA28859@kadam>
References: <20190612180439.7101-1-nishkadg.linux@gmail.com>
 <20190613064513.GA28930@kadam>
 <82013631-fb3e-ca52-a07d-91f50beb4263@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <82013631-fb3e-ca52-a07d-91f50beb4263@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9286
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1906130068
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9286
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1906130068
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Jun 13, 2019 at 01:53:20PM +0530, Nishka Dasgupta wrote:
> On 13/06/19 12:15 PM, Dan Carpenter wrote:
> > On Wed, Jun 12, 2019 at 11:34:29PM +0530, Nishka Dasgupta wrote:
> > > Remove unused function eeprom_read_sz.
> > > Issue found with Coccinelle.
> > > 
> > > Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
> > 
> > This is great but you need to remove the declaration from the .h file
> > as well.  I noticed some of the other patches have this problem as well
> > so please check them and resend the whole set.
> 
> I'm sorry, I couldn't find the declaration in any .h file for any of these
> patches, even after fetch origin, rebase, and grep. Going to individual .h
> files and searching for declarations does not seem to work either. Is there
> any other way I can look for the declarations?
> 

Oh...  Heh.  Sorry for the noise.  My bad.

I was looking at the wrong driver.  It's declared but not implemented in
rtl8188eu in drivers/staging/rtl8188eu/include/rtw_eeprom.h.  We should
delete those too, but it's unrelated to your patchset so don't worry
about it.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
