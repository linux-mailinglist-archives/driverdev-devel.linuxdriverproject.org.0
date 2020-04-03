Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A7CBA19D31E
	for <lists+driverdev-devel@lfdr.de>; Fri,  3 Apr 2020 11:07:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D10F48630F;
	Fri,  3 Apr 2020 09:07:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id A4a57-ERcy2X; Fri,  3 Apr 2020 09:07:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D515F85ADC;
	Fri,  3 Apr 2020 09:07:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9590B1BF402
 for <devel@linuxdriverproject.org>; Fri,  3 Apr 2020 09:07:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9261888325
 for <devel@linuxdriverproject.org>; Fri,  3 Apr 2020 09:07:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xghxdRyMxPwq for <devel@linuxdriverproject.org>;
 Fri,  3 Apr 2020 09:07:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 848EC882FB
 for <devel@driverdev.osuosl.org>; Fri,  3 Apr 2020 09:07:06 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 03393nvQ104925;
 Fri, 3 Apr 2020 09:07:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 content-transfer-encoding : in-reply-to; s=corp-2020-01-29;
 bh=ecYT7j4W3KZrYtk8x/jTEF7Or20Yy4ud7U4CrTHl5DM=;
 b=WayGPNkq+5AriE6uKTQcGMutNLb5ldThVLqSHwF4fN7yuj3+F94VLAWM/U7k2yrtKYUn
 aNp4ASJOkDhEFnwTYQJng8wsDNvt3Wf3v/Wen3sKnEeZ8eAiLawZPXhR2LAeu7ChrMOu
 GsNFU5nBhycX5WAxKhSWDpCtW3shM63BsD9GMJmkdLEfRJktz/NE2bcvJ2eWgF3DPUN6
 mJlcSQU9bTl05A1J9Q71Tn63/E8reKhADkFzWw3SdkvRQZTcm+kxee9Xp9WVVkm939Js
 BU0XLwhOqZVdm8cVW+nxifECZgh+NJ3d0MWk5w/Ucr1juQNvQ9fu5pWsATd7KVcY3hJ+ RA== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by aserp2120.oracle.com with ESMTP id 303yunjjd7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 03 Apr 2020 09:07:05 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 03392C3x047935;
 Fri, 3 Apr 2020 09:07:04 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3020.oracle.com with ESMTP id 302ga452k0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 03 Apr 2020 09:07:04 +0000
Received: from abhmp0006.oracle.com (abhmp0006.oracle.com [141.146.116.12])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 033973YM022544;
 Fri, 3 Apr 2020 09:07:03 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 03 Apr 2020 02:07:02 -0700
Date: Fri, 3 Apr 2020 12:06:55 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: =?iso-8859-1?Q?Lu=EDs?= Mendes <luis.p.mendes@gmail.com>
Subject: Re: [PATCH 01/01] staging: gasket: Fix incongruency in handling of
 sysfs entries creation
Message-ID: <20200403090655.GB2001@kadam>
References: <CAEzXK1p5uuRy9kxfxpTS+hNR-WGWtc-393HP5pPgzjUq_Q-RbA@mail.gmail.com>
 <20200402104246.GL2001@kadam>
 <CAEzXK1rZHDmhhXNQFVLccynM9WDbu4PzEvt5q_hMSTo1dOG4wg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAEzXK1rZHDmhhXNQFVLccynM9WDbu4PzEvt5q_hMSTo1dOG4wg@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9579
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 mlxlogscore=855 bulkscore=0 mlxscore=0 spamscore=0 adultscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2004030077
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9579
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 lowpriorityscore=0
 malwarescore=0 adultscore=0 priorityscore=1501 mlxlogscore=916 bulkscore=0
 suspectscore=0 mlxscore=0 spamscore=0 impostorscore=0 clxscore=1015
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2004030077
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Todd Poynor <toddpoynor@google.com>, Wentao Cai <etsai042@gmail.com>,
 Rob Springer <rspringer@google.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Apr 02, 2020 at 03:22:33PM +0100, Lu=EDs Mendes wrote:
> Hi Dan,
> =

> Ah sorry, ok, I will re-send the patch using git.
> Can you please tell me which is the correct mailing list to where this
> patch should be submitted?
> =


You had the CC correct, but always CC the person responsible for
original patch which introduced the problem so that they can review it.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
