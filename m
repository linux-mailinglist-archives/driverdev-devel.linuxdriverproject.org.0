Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EB7E15AB4A
	for <lists+driverdev-devel@lfdr.de>; Wed, 12 Feb 2020 15:49:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F24B183531;
	Wed, 12 Feb 2020 14:49:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Zumh2kMEHQ-V; Wed, 12 Feb 2020 14:49:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D3ED6834F0;
	Wed, 12 Feb 2020 14:49:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1F02A1BF31C
 for <devel@linuxdriverproject.org>; Wed, 12 Feb 2020 14:49:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1BBC982022
 for <devel@linuxdriverproject.org>; Wed, 12 Feb 2020 14:49:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id j7zOLKd3rJSL for <devel@linuxdriverproject.org>;
 Wed, 12 Feb 2020 14:49:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 509D681FA0
 for <devel@driverdev.osuosl.org>; Wed, 12 Feb 2020 14:49:43 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 01CEXCK9004249;
 Wed, 12 Feb 2020 14:49:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=9kz3g8SppE3C8092it7UV1WcnHIeXA9iH/3T2Jic3VM=;
 b=p9vCGHflG5TyIueboQKKkxf09DlNK3AThJpo9NbBO8eHyNzioRFLTqF5+cCF1aiApO+b
 ppMrz2mk5ZANaPWk9/CHLQz6+zSl0uvZq/oTdZXm9bcQaQnNaeiQkRr1a5RTQdAnPlU1
 sUHSG3oItzm5hY+FsAptEfNNgVQhoV6pLI+JU0aCToQ0MUUVjU+dCVjlpBXWfqu/Ontk
 cm6Trb1hpkdmssDzQR1KaYVi7lyFEO9yKZnMx91UuJP7r0u2mhdZQbnHgb4gcs6XuJaY
 M3I1fMxoqQqmkInkLztvjiiBuEDo1wNr2JIXa7DNrwP/NDaZHPX3VCp5YIa8d1k1SnoX BQ== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2120.oracle.com with ESMTP id 2y2p3sjrmh-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 12 Feb 2020 14:49:42 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 01CEbAmJ046573;
 Wed, 12 Feb 2020 14:49:42 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3020.oracle.com with ESMTP id 2y4k9frmrd-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 12 Feb 2020 14:49:42 +0000
Received: from abhmp0015.oracle.com (abhmp0015.oracle.com [141.146.116.21])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 01CEnff8030258;
 Wed, 12 Feb 2020 14:49:41 GMT
Received: from kadam (/129.205.23.165) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 12 Feb 2020 06:49:40 -0800
Date: Wed, 12 Feb 2020 17:49:33 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Kaaira Gupta <kgupta@es.iitr.ac.in>
Subject: Re: [PATCH v2] staging:gasket:gasket_core.c:unified quoted string
 split across lines in one line
Message-ID: <20200212144933.GJ1778@kadam>
References: <20200211200456.GA10351@kaaira-HP-Pavilion-Notebook>
 <alpine.DEB.2.21.2002112139550.3266@hadrien>
 <20200212115035.GB21751@kaaira-HP-Pavilion-Notebook>
 <20200212144424.GI1778@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200212144424.GI1778@kadam>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9528
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 suspectscore=0 spamscore=0
 adultscore=0 bulkscore=0 phishscore=0 malwarescore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2001150001
 definitions=main-2002120114
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9528
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 mlxscore=0 malwarescore=0
 suspectscore=0 mlxlogscore=999 priorityscore=1501 clxscore=1015
 impostorscore=0 lowpriorityscore=0 phishscore=0 adultscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2001150001
 definitions=main-2002120114
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
 linux-kernel@vger.kernel.org, Julia Lawall <julia.lawall@inria.fr>,
 Rob Springer <rspringer@google.com>, Todd Poynor <toddpoynor@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Feb 12, 2020 at 05:44:24PM +0300, Dan Carpenter wrote:
> On Wed, Feb 12, 2020 at 05:20:35PM +0530, Kaaira Gupta wrote:
> > When the driver tries to map a region, but the region has certain
> > permissions, or when it attempts to open gasket with tgid, or when it
> > realeases device node;
> 
> We don't care about any of this information...
> 
> > the logs are displayed in one line only while the
> > code has the strings split in two lines which makes it difficult for
> > developers to search for code based on the log messages. So, this patch
> > fixes three warnings of 'quoted string split across lines' in
> > gasket_core.c by merging the strings in one line.

Another perfectly adequate commit message would be:

Fix three checkpatch.pl warnings of 'quoted string split across lines'
in gasket_core.c by merging the strings in one line.

Which is imperative.  :)  Hooray!

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
