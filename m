Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A07D22880BD
	for <lists+driverdev-devel@lfdr.de>; Fri,  9 Oct 2020 05:37:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9C792875F9;
	Fri,  9 Oct 2020 03:37:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xjMC+Dk+6MSM; Fri,  9 Oct 2020 03:37:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A5D0F875D5;
	Fri,  9 Oct 2020 03:37:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C6E2D1BF5A6
 for <devel@linuxdriverproject.org>; Fri,  9 Oct 2020 03:37:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C3D31876A4
 for <devel@linuxdriverproject.org>; Fri,  9 Oct 2020 03:37:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5LgZS8gdfukf for <devel@linuxdriverproject.org>;
 Fri,  9 Oct 2020 03:37:38 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from cpvds521.sideink.com (cpvds521.sideink.com [209.95.54.60])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 22DA08769E
 for <devel@driverdev.osuosl.org>; Fri,  9 Oct 2020 03:37:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=cartrackgps.net; s=default; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NHvII66HAU9hsxTc1NXbjZ8PkIwYRkskJLFleicv4+A=; b=gRNvL4GTAqDDGhfaafJ+awIaLZ
 +4ffP2s67axVgFxDDG2iQbYPvh3JhMO/SRt2xbFc8PLbRWXDJJjQUokrL69fMaMqzl3g50Yo+Y17S
 pTpoVdpA/JQ5zajPYrp2hRjcec0Cfwdi/nkeS2Xgz8WB1YeYuYUA3SiMfl49oxIXqDMd3iH1O7yY1
 OKi9d9AOM+4lr3v4DzdvGjCMBHbJ7jbAmA2wMwVBb5GefZA6bIND+/yt66YNGMHBW+oIyE5FbdXQV
 qtXeorU40VEfCAFGvL9WVJbrMnjVaHeXAPKgt4wW4kGKEM9C1Kf+0x7+0f8XshkyQkKzNZ9J8U875
 b2TFTRSA==;
Received: from r167-63-95-149.dialup.adsl.anteldata.net.uy
 ([167.63.95.149]:45330 helo=cartrackgps.net)
 by cpvds521.sideink.com with esmtpsa (TLS1) tls
 TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA (Exim 4.93)
 (envelope-from <infoctg@cartrackgps.net>) id 1kQjDs-0000LL-Ji
 for devel@driverdev.osuosl.org; Fri, 09 Oct 2020 05:37:37 +0200
From: CarTrackGPS.com<infoctg@cartrackgps.net>
To: devel@driverdev.osuosl.org
Subject: Propuesta de GPS para Devel
Date: 09 Oct 2020 00:38:05 -0300
Message-ID: <20201009003804.05C68B4C65EDFA9D@cartrackgps.net>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpvds521.sideink.com
X-AntiAbuse: Original Domain - driverdev.osuosl.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - cartrackgps.net
X-Get-Message-Sender-Via: cpvds521.sideink.com: authenticated_id:
 infoctg@cartrackgps.net
X-Authenticated-Sender: cpvds521.sideink.com: infoctg@cartrackgps.net
X-Source: 
X-Source-Args: 
X-Source-Dir: 
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
Reply-To: "CarTrackGPS.com" <infoctg@cartrackgps.net>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Estimado Devel,

Le saluda Mario de la empresa Car Track GPS y estamos buscando =

distribuidores.

Somos desarrolladores de software GPS para localizaci=F3n de =

veh=EDculos.
Este mes ofrecemos equipos Hunter 3G y 4G, tambi=E9n el KIT =

completo en 2 pagos.

Tenga su propia Plataforma Web Dedicada desde 68 d=F3lares =

mensuales. Sin l=EDmites, y sin costo por veh=EDculo.
Adquiera el KIT BASICO con 5 equipos GPS desde 588 d=F3lares, env=EDo =

incluido.-

Desarrollamos dos nuevos equipos port=E1tiles de alta duraci=F3n de =

bater=EDa. Sirven para rastreo de trailers, contenedores, =

embarcaciones y tambi=E9n bienes. Prevenga el robo y recupere los =

bienes colocando un equipo discreto dentro de una de las cajas de =

mercader=EDa, o escondido dentro de un trailer. Los ladrones hoy no =

escatiman esfuerzos y roban el trailer completo con toda la =

carga.

Con nuestra App en su tel=E9fono puede detener el veh=EDculo en caso =

de robo, localizar en tiempo real, estimar distancia recorrida, =

controlar combustible y saber qu=E9 hacen los choferes.

La promoci=F3n le permitir=E1 tener su propia Plataforma Web a un =

bajo costo. M=E1s de 200 empresas est=E1n ofreciendo servicios de =

localizaci=F3n de veh=EDculos.
Todos ellos comenzaron a trav=E9s nuestro KIT PROFESIONAL de GPS.
Si le interesa comenzar un nuevo negocio y ofrecer localizaci=F3n =

v=EDa web tome nota: no cobramos por veh=EDculo, el software es =

ilimitado.

Durante 30 d=EDas (hasta el 11/8/2020) ofrecemos un 10% de =

descuento en la compra de nuestras soluciones de GPS.
Este descuento le permitir=E1 adquirir nuestra soluci=F3n completa a =

trav=E9s de una inversi=F3n m=E1s baja de lo que normalmente ofrecemos. =


Tambi=E9n puede ofrecer el software a empresas que deseen tener su =

propio sistema y obtener as=ED una ganancia sin tener que hacer =

ninguna inversi=F3n.

Nuestras soluciones permiten rastrear veh=EDculos o personas, con =

bater=EDa interna, resistente al agua y a los golpes, alta =

sensibilidad que permite rastrear en el interior de casas u =

oficinas, muy bajo consumo y peque=F1o tama=F1o, bot=F3n de p=E1nico y =

relay incluido sin costo.

Solicite una propuesta comercial en espa=F1ol.
Si gustan podemos programar una conferencia y hacer una video =

llamada.

Saludos cordiales,
Lic. Mario de la Cruz
Gerente Regional
Whatsapp: +505 8641 5459
www.cartrackgps.com

Contamos con clientes en m=E1s de 100 pa=EDses y 20 a=F1os de =

experiencia nos avalan.

ID: 40663

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
