Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BDFA1BF4F6
	for <lists+driverdev-devel@lfdr.de>; Thu, 30 Apr 2020 12:10:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0E33686C77;
	Thu, 30 Apr 2020 10:10:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9JO5JDusity9; Thu, 30 Apr 2020 10:10:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0FC0B86BD0;
	Thu, 30 Apr 2020 10:10:08 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 937001BF9B4
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 30 Apr 2020 10:09:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 88BAD87D13
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 30 Apr 2020 10:09:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UTLliqR2zrtz
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 30 Apr 2020 10:09:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa3.microchip.iphmx.com (esa3.microchip.iphmx.com
 [68.232.153.233])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8AA4E86BEC
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 30 Apr 2020 10:09:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1588241357; x=1619777357;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=yzKI6t4QO3xZc5EAU3T3JuFCCcMDyZYI6sjDzFZr6gc=;
 b=1FzTPAJRRpqG2g2WdIzWOKImvWzB4mMtohuluSIDeKcru70UCwppUcla
 H+x6PXQYGZvDSliKaXeRYsprmIP141g15BgVYHitCtXd8VC0i2A5rvLeJ
 gTHtYi3HXi13oSIr54ZET9PSStduNqFSHNG7OQ5mIBs0VoEw5PTB1GnBF
 oKKRhs9vZFDhVJ3kb0k3I417jXQq2v5mSmO+Ua7Cvb0m2NtLsvypIe/mg
 KRd4iNhH30XGejQyCbwhA170zTo/eeTASjL/hYwqbxRTrpfQiV+3GK3lA
 t2wD2FBXoWyTXmzbLjcqWOyGU7h5Wpb/HOl1eMq9ej2D+d4GtodYhBUta w==;
IronPort-SDR: mtmzTZcOsvmQp7c7s1zweWp98fzLxVNvstPfAk6sAgaOy5lHOwKKZt34Q+cLCjYa9w2JxI7tSi
 C+x00hraUjT4/85vvwYXUnFFW3q0BN7mLr14zfPX9AsAPfVH5mv55/DdMTW5fMohLqagwDJnu+
 qxREC/Xj6qtBbOXArnhZmU/0DFBQVKGAys4EByiw+otdwSaSyqXPZnZA6haM98sEnT+9i6ml5e
 oags1LsHu9rZoAlqVO5KiX6fVpM8AMhnquGWOW0VR627F8UrH7BwjgT6r+k7c/dSq12EUzK6Q2
 IbA=
X-IronPort-AV: E=Sophos;i="5.73,334,1583218800"; d="scan'208";a="75071739"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 30 Apr 2020 03:09:16 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 30 Apr 2020 03:09:16 -0700
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 30 Apr 2020 03:09:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ogdLoMS+4DEwISOv8Te9kBRetAR2Y6qVgnWKn238HCzgBc5dOAoBKKk+o3I2HwAgDGx0xcjkx69Tgth4lYHspMQwoC4/DEppE2CEsl64pnbKx9VO5pjg/+GX5eK6ie10GCvhSWLek+pqmjmNu7GvsCgBUS6coXZuB8kykvMmfxD9xTHj/JIBjH+FIE8TvwjQLQt9K/aeG/QmonvtWPyjbpTPLLllCb9onxlF0MZQmWxsqdaOaa/KrjWgC9rNHRNuQNesgO16nwD3hzXia1cL0l8gLty3U/H0pO8EVkOIwGF8IJzwKksEjZjpk6haRk6MhgdoVfhdhl5NUMeAL4xpXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yzKI6t4QO3xZc5EAU3T3JuFCCcMDyZYI6sjDzFZr6gc=;
 b=dOBK4dS/CpGKlr0BhT4sBHd82os5n4U6WcVp8tp8BgE2Go6qmvQJwhyHn9cfrz67KtJQVxE86bNXT8MX/VPUTLu+Ub3uTLeHSrJ6JZMyNi8ZuDd4XOEnqUgrprHNtyhuDUcZ3H5Tqk6mwz/8idyIimI2b5DwpUfhUHcRw9wdBZUaaQlm0xn/VmwKU3cTCZJgzcIi6W3Gibozud9mV8C9JDM02Vr4kFeIuX71VIMWHk5Q86ZcIztT4C5HyzcR2+RMPU7HgdlCS0TYLKSTjiJdSyQJSx8iDwckj2Q4MHnbdUSUGbVyYcy5it7YdMnAUnHQOmRmtSuvlE/EoWUORGwErg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yzKI6t4QO3xZc5EAU3T3JuFCCcMDyZYI6sjDzFZr6gc=;
 b=imJrVVI2Gn29wX7/dxqSxTLBY3Sh0+Yifwa95ROPYvRV10bUe92O5TZ1UVQTBUmwwtBgkpeE9d6O5e1lyrI9S2RFtjYoKEFqzbVbPmbv06LVKWF1ieP5pD2iGylnwdI9pn6484yUaxGNQMhY8sxtOMg0zpgit/EEADWsk9yfZvo=
Received: from DM6PR11MB3420.namprd11.prod.outlook.com (20.177.218.95) by
 DM6PR11MB3292.namprd11.prod.outlook.com (20.176.120.149) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2937.13; Thu, 30 Apr 2020 10:09:15 +0000
Received: from DM6PR11MB3420.namprd11.prod.outlook.com
 ([fe80::91cb:6555:db9b:53fa]) by DM6PR11MB3420.namprd11.prod.outlook.com
 ([fe80::91cb:6555:db9b:53fa%7]) with mapi id 15.20.2958.019; Thu, 30 Apr 2020
 10:09:15 +0000
From: <Christian.Gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: Re: [PATCH RFC] staging: most: usb: move USB adapter driver to stable
 branch
Thread-Topic: [PATCH RFC] staging: most: usb: move USB adapter driver to
 stable branch
Thread-Index: AQHWHsVwWYdagqiYDUWiCh+KRy2LvKiRT0SAgAAAi4CAAAEbgIAAIFaA
Date: Thu, 30 Apr 2020 10:09:14 +0000
Message-ID: <b95735f844eacd04ee4689783e0b664b9e406a2e.camel@microchip.com>
References: <1588233612-31327-1-git-send-email-christian.gromm@microchip.com>
 <20200430080735.GB2495313@kroah.com> <20200430080931.GC2495313@kroah.com>
 <20200430081329.GD2495313@kroah.com>
In-Reply-To: <20200430081329.GD2495313@kroah.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.30.5-1.1 
authentication-results: linuxfoundation.org; dkim=none (message not signed)
 header.d=none;linuxfoundation.org; dmarc=none action=none
 header.from=microchip.com;
x-originating-ip: [46.142.160.218]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2e17d177-3cf2-4b3e-51af-08d7ecee89b3
x-ms-traffictypediagnostic: DM6PR11MB3292:
x-microsoft-antispam-prvs: <DM6PR11MB32927333DBADFF4AF525E3C0F8AA0@DM6PR11MB3292.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:276;
x-forefront-prvs: 0389EDA07F
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3420.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(366004)(136003)(39860400002)(346002)(376002)(396003)(6512007)(478600001)(2906002)(186003)(2616005)(4326008)(5660300002)(316002)(26005)(6506007)(71200400001)(36756003)(6916009)(91956017)(8936002)(66556008)(66946007)(64756008)(8676002)(76116006)(66476007)(6486002)(66446008)(86362001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BxJFHnaCXN3KkC9aTPWT5ve3rZXvhGFMrSUapKos52xE//09ZnSYJAPdO6rfOC5C1YjuksEuhCwnTwcQz7bhQWnF4JUKrqYAni5Ki5n3oD7px42edzZlh1EYl3ppNcMBiEEJRRkQ2Ckb5OEpD5uuP3jGd0JmxLUY/SyUhmRpPbdm+MYP/+tjUo0Dzj3uOkZb8lpC2hMdCW7vlOBEVvXvtIs8GSCEKT682nJZuIFOzvEfezcvJDw3tS14BJLDrE2JVj9XfwPGR3KrcMxHGTARJhuTTbbwCgIYShaA/ACy8uYUlvdIJYn94gMUBfTiJdmB1aNibTWvO/QQml4cxiD88lSa51R6+/NsPMwDujA9aO+wWgW6UdCWp+gYKTQHbtwno4DqBQponk6GoF16MsPm3/NVw1eiRpfB2XaFBAsa8n3AHygHxbSP90yjcGSYf3vn
x-ms-exchange-antispam-messagedata: rqDPtwYs2tMaIAwFIdDHlmVfy2gz9tODK6EVv21mUh7cM0PO+EkU6d6aI0zDN/pqUHn79nIg5JPqHaIxlJCn9G87RDLhOgxHMjcprBrOb/QXT65FS8x65j+RY7R2GCXXZgmbCMM7aQefv7yvqkN7leeRlB4Ik0eEuXu5Fb+A9mFxVx95FuE49+V1IrtI4OWTND/Y/QvDgihr/BpufQYElqgC9AN7oWgoxYwPQas3pa/f/Q0Hldbu2nsLRs1OimcAO8IeSJW7IzoB85WkGSb1OmNiUTHaEUVyEk3qrCFtQl9SEB820gSCuTiD+lRs3mDCLvWCd+w/eS2KjN8xK70yKHJX/CxSOtD5sJiJOWOLHMQBG9qcV93Ts/AM2gqHy9MXbG4gxkv6r7yCWY0sUnNa5gjb5QCdEkLvkg5W3J+X/MEu7sSYvWOJhz3DAzROAFqfghIiOxnYjYLDhgKEi1l7ApIJ1tDJLbzWaW198iyroTYfw7d3ktviEJlryrFtt5TWASsAEnwew5eva3icgwHcg4wTFyOYLiFTzbk05eUAvstlFuIOqwk5Ed6nkBJNESE1JHLc2eo8hOsFiEsbSnDIasLceKoJsSyUInnBBX2ctmtl0JONmJeH5Mjqm/Ub+vJm5kI4Q3LUtuj5hOueHJnhIghKeJoMKV+KbIGcVYRnDLqN4xXe8+GhGkThzBX+5myBCOt8PvD+tyP6V0xwUkzHMcL9GUase2/I4vCGAEmrLkMQ5RPyNaTfUmUc55dIrTQ30gj7mGX9Ho4G1Nte3Iaj+iC/lkikX3W+hdxR+fzXofM=
x-ms-exchange-transport-forked: True
Content-ID: <EA9886AFAA33BF438088C2DB2817D6A7@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 2e17d177-3cf2-4b3e-51af-08d7ecee89b3
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Apr 2020 10:09:15.1337 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RFgAxBjr/Zh4BBuKtFbp6vKkVO4ZgrwW+PxOuo9HBwIK52Q+3TR1vBtSSttHk61f3op3ngQhNljbRFgjY/wBfIA80RtWwzqUaPhi8DNF/og=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3292
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
Cc: driverdev-devel@linuxdriverproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, 2020-04-30 at 10:13 +0200, Greg KH wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you
> know the content is safe
> 
> On Thu, Apr 30, 2020 at 10:09:31AM +0200, Greg KH wrote:
> > On Thu, Apr 30, 2020 at 10:07:35AM +0200, Greg KH wrote:
> > > On Thu, Apr 30, 2020 at 10:00:12AM +0200, Christian Gromm wrote:
> > > > This patch moves the MOST USB adapter driver to the stable
> > > > branch.
> > > > It is a follow-up to commit <b276527>.
> > > 
> > > That's not how to refer to git commit ids.  Please see the
> > > submitting-patches.rst file for the proper format.
> > 
> > Also, you might want to run this driver by the usb mailing list,

So I just put linux-usb@vger.kernel.org on cc? 

> >  I don't
> > think it's been audited by anyone, myself included, for any usb
> > specific
> > things.

Probably not.

> > 
> > As proof, I see at least one thing that should be changed...
> 
> Ok, lots of little things, I don't think I ever actually read this
> driver before, sorry about that...
> 
> Please post it as a patch that just adds the file,

And another patch that removes the one from the staging directory?

thanks,
Chris

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
